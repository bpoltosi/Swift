//
//  SensorViewModel.swift
//  Histórico de umidade via API
//

import Foundation
import Combine

struct DocumentoUmidade: Decodable {
    let id: String?
    let umidade: Double?
    let timestamp: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case umidade
        case timestamp
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try? container.decode(String.self, forKey: .id)
        timestamp = try? container.decode(String.self, forKey: .timestamp)

        // O Node-RED/Cloudant pode devolver o campo como texto ou número JSON.
        if let texto = try? container.decode(String.self, forKey: .umidade) {
            umidade = Double(texto.replacingOccurrences(of: ",", with: "."))
        } else if let numero = try? container.decode(Double.self, forKey: .umidade) {
            umidade = numero
        } else {
            umidade = nil
        }
    }
}

struct RegistroUmidade: Identifiable {
    let id = UUID()
    let tempo: Int
    let valor: Int
}

class SensorViewModel: ObservableObject {
    @Published var umidadePercentual: Int = 0
    @Published var valorBruto: Int = 1024
    @Published var historico: [RegistroUmidade] = []

    private var timer: Timer?

    // URL do endpoint GET do Node-RED
    private let dbURL = "http://192.168.128.181:1880/umidadeGET"

    func iniciarMonitoramento() {
        guard timer == nil else { return }

        buscarDadosDB()
        timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { [weak self] _ in
            self?.buscarDadosDB()
        }
    }

    func pararMonitoramento() {
        timer?.invalidate()
        timer = nil
    }

    private func buscarDadosDB() {
        guard let url = URL(string: dbURL) else { return }

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                print("Erro de conexão: \(error?.localizedDescription ?? "sem detalhes")")
                return
            }

            do {
                let resultado = try JSONDecoder().decode([DocumentoUmidade].self, from: data)

                DispatchQueue.main.async {
                    var novoHistorico: [RegistroUmidade] = []

                    for (indice, documento) in resultado.enumerated() {
                        guard let percentual = documento.umidade, percentual.isFinite else {
                            continue
                        }

                        let valor = max(0, min(100, Int(percentual.rounded())))
                        novoHistorico.append(
                            RegistroUmidade(tempo: indice + 1, valor: valor)
                        )
                    }

                    // Mantém apenas os últimos 50 registros para limitar o gráfico.
                    if novoHistorico.count > 50 {
                        novoHistorico = Array(novoHistorico.suffix(50))
                    }

                    self?.historico = novoHistorico

                    if let ultimoValor = novoHistorico.last?.valor {
                        self?.umidadePercentual = ultimoValor
                    }
                }
            } catch {
                print("Erro ao decodificar JSON: \(error)")
            }
        }.resume()
    }
}
