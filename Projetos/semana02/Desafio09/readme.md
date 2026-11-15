# Desafio 09 — Classificação de imagens com Core ML

Aplicativo de demonstração de classificação de imagens no próprio dispositivo usando o modelo **MobileNetV2**, Core ML e Vision. O usuário percorre imagens de exemplo e solicita uma classificação; a interface apresenta a classe mais provável e o nível de confiança retornado pelo modelo.

## Funcionalidades

- Percorre uma sequência de seis imagens configuradas no código.
- Permite avançar e voltar entre as imagens.
- Executa uma requisição Vision com um modelo Core ML.
- Exibe o identificador da classe classificada e a confiança percentual.
- Informa quando uma imagem ou o modelo não pode ser carregado.

**Escopo atual:** o código implementa classificação de imagens estáticas. Não há processamento de vídeo implementado nesta pasta.

## Tecnologias

- Swift e SwiftUI
- Core ML
- Vision (`VNCoreMLModel`, `VNCoreMLRequest` e `VNImageRequestHandler`)
- Modelo `MobileNetV2.mlmodel`

## Arquivos e recursos

- `ContentView.swift` — seleção da imagem e execução da classificação.
- `Projeto_CoreMLApp.swift` — ponto de entrada.
- `MobileNetV2.mlmodel` — modelo de machine learning.
- `barco1.jpg`, `barco2.jpg` e `barco5.jpg` — imagens JPEG versionadas no diretório.
- `15 - [PDF] IA - CoreML Models.pdf` — material de apoio.

O código procura seis assets chamados `imagem1` a `imagem6`, mas esses nomes não aparecem como catálogo de imagens nesta pasta. Ao preparar o target, crie os image sets com os nomes esperados e associe as imagens existentes (ou ajuste `imageNames` em `ContentView.swift`). Verifique também se `MobileNetV2.mlmodel` está incluído no target para que o Xcode gere a classe `MobileNetV2`.

## Executar

Crie um projeto **iOS App** com SwiftUI no Xcode, adicione o fonte, o modelo e os assets de imagem ao target. Não há um projeto Xcode completo versionado nesta pasta. A análise é executada localmente por Core ML/Vision; não há endpoint de API neste código.
