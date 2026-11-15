//
//  SensorViewModel.swift
//  Monitor de umidade via WebSocket
//

import Foundation
import Combine

struct RegistroUmidade: Identifiable {
    let id = UUID()
    let tempo: Int
    let valor: Int
}

class SensorViewModel: ObservableObject {
    @Published var umidadePercentual: Int = 0
    @Published var valorBruto: Int = 1024
    @Published var historico: [RegistroUmidade] = []

    private var contadorLeituras = 0
    private var webSocketTask: URLSessionWebSocketTask?

    func conectar() {
        // Substitua pelo IP exibido no Monitor Serial da placa ESP8266.
        let url = URL(string: "ws://192.168.128.179:81")!
        webSocketTask = URLSession.shared.webSocketTask(with: url)
        webSocketTask?.resume()
        receber()
    }

    private func receber() {
        webSocketTask?.receive { [weak self] result in
            switch result {
            case .success(let message):
                if case .string(let texto) = message,
                   let data = texto.data(using: .utf8),
                   let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {

                    DispatchQueue.main.async {
                        // O firmware envia a leitura bruta do A0 na chave "adc".
                        let adcValor = (json["adc"] as? NSNumber)?.doubleValue ?? 1024.0
                        self?.valorBruto = Int(adcValor)

                        // 1024 = 0% (seco); 0 = 100% (molhado).
                        let percentual = 100.0 * ((1024.0 - adcValor) / 1024.0)
                        let valorFinal = Int(max(0.0, min(100.0, percentual)))
                        self?.umidadePercentual = valorFinal

                        let registro = RegistroUmidade(
                            tempo: self?.contadorLeituras ?? 0,
                            valor: valorFinal
                        )
                        self?.historico.append(registro)
                        self?.contadorLeituras += 1

                        if (self?.historico.count ?? 0) > 30 {
                            self?.historico.removeFirst()
                        }
                    }
                }

            case .failure(let erro):
                print("Erro no WebSocket: \(erro)")
            }

            self?.receber()
        }
    }
}
