# Projeto 12 — Classificação de imagens com Core ML

Aplicativo de demonstração de classificação de imagens no dispositivo usando MobileNetV2, Core ML e Vision. O usuário percorre imagens de exemplo e solicita uma classificação; a interface apresenta a classe provável e a confiança retornada pelo modelo.

## Funcionalidades
- Percorre três imagens de exemplo.
- Permite avançar e voltar entre as imagens.
- Executa uma requisição Vision com modelo Core ML.
- Exibe classe identificada e confiança percentual.
- Informa quando imagem ou modelo não pode ser carregado.

**Escopo atual:** classificação de imagens estáticas; não há processamento de vídeo implementado.

## Tecnologias
Swift, SwiftUI, Core ML, Vision e `MobileNetV2.mlmodel`.

## Arquivos
- `ContentView.swift` — seleção e classificação.
- `Projeto_CoreMLApp.swift` — entrada.
- `MobileNetV2.mlmodel` — modelo.
- `barco1.jpg`, `barco2.jpg`, `barco5.jpg` — imagens.
- `15 - [PDF] IA - CoreML Models.pdf` — material de apoio.

O código utiliza os três nomes de imagem presentes no diretório: `barco1`, `barco2` e `barco5`. Inclua os JPEGs nos recursos do app e o modelo no target para que o Xcode gere a classe `MobileNetV2`.

## Executar
Crie um projeto iOS App com SwiftUI no Xcode e adicione o código, o modelo e as imagens ao target. Não há projeto Xcode completo nesta pasta. A análise utiliza Core ML/Vision localmente e não depende de API.