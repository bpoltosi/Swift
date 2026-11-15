//
//  ContentView.swift
//  Classificador de imagens Core ML
//

import SwiftUI
import CoreML
import Vision

struct ContentView: View {
    // Arquivos de imagem versionados neste diretório e incluídos no target do app.
    private let imageNames = ["barco1", "barco2", "barco5"]

    @State private var currentIndex = 0
    @State private var classificationLabel = "Pronto para analisar"

    private var currentImage: UIImage? {
        guard imageNames.indices.contains(currentIndex) else { return nil }
        return UIImage(named: imageNames[currentIndex])
    }

    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 4) {
                Text("MobileNet")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Text("Classificador de Imagem")
                    .font(.headline)
                    .fontWeight(.bold)
            }
            .padding(.top, 30)

            VStack(spacing: 15) {
                if let uiImage = currentImage {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal)
                } else {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 300)
                        .overlay {
                            Text("Imagem não encontrada")
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                        }
                        .padding(.horizontal)
                }

                HStack {
                    Button {
                        if currentIndex > 0 {
                            currentIndex -= 1
                            resetAnalysis()
                        }
                    } label: {
                        Image(systemName: "chevron.left.circle.fill")
                            .font(.title)
                            .foregroundColor(currentIndex > 0 ? .blue : .gray.opacity(0.5))
                    }
                    .disabled(currentIndex == 0)

                    Spacer()

                    Text("Imagem \(currentIndex + 1) de \(imageNames.count)")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.secondary)

                    Spacer()

                    Button {
                        if currentIndex < imageNames.count - 1 {
                            currentIndex += 1
                            resetAnalysis()
                        }
                    } label: {
                        Image(systemName: "chevron.right.circle.fill")
                            .font(.title)
                            .foregroundColor(currentIndex < imageNames.count - 1 ? .blue : .gray.opacity(0.5))
                    }
                    .disabled(currentIndex == imageNames.count - 1)
                }
                .padding(.horizontal, 40)
            }

            VStack(alignment: .leading, spacing: 10) {
                Label("Resultado da Análise", systemImage: "text.badge.checkmark")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Text(classificationLabel)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(UIColor.systemBackground))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
            .padding(.horizontal)

            Spacer()

            Button(action: classifyImage) {
                Label("Analisar Agora", systemImage: "text.magnifyingglass")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
            }
            .disabled(currentImage == nil)
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
        .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
    }

    private func resetAnalysis() {
        classificationLabel = "Pronto para analisar"
    }

    private func classifyImage() {
        guard let uiImage = currentImage,
              let ciImage = CIImage(image: uiImage) else {
            classificationLabel = "Erro ao converter imagem"
            return
        }

        do {
            let model = try VNCoreMLModel(
                for: MobileNetV2(configuration: MLModelConfiguration()).model
            )

            let request = VNCoreMLRequest(model: model) { request, error in
                if let error {
                    DispatchQueue.main.async {
                        classificationLabel = "Erro na classificação: \(error.localizedDescription)"
                    }
                    return
                }

                if let results = request.results as? [VNClassificationObservation],
                   let topResult = results.first {
                    DispatchQueue.main.async {
                        classificationLabel = "Identificado: \(topResult.identifier) (\(String(format: "%.2f", topResult.confidence * 100))%)"
                    }
                } else {
                    DispatchQueue.main.async {
                        classificationLabel = "Nenhum resultado encontrado"
                    }
                }
            }

            let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
            DispatchQueue.global(qos: .userInitiated).async {
                do {
                    try handler.perform([request])
                } catch {
                    DispatchQueue.main.async {
                        classificationLabel = "Erro na classificação: \(error.localizedDescription)"
                    }
                }
            }
        } catch {
            classificationLabel = "Falha ao carregar modelo ML"
        }
    }
}

#Preview {
    ContentView()
}
