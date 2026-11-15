# Projeto 13 — StudyCast: leitura de texto em imagens

Aplicativo de apoio à leitura que identifica texto presente em uma imagem e permite reproduzi-lo em voz alta. Combina seleção de fotos, reconhecimento de texto com Vision e síntese de fala com AVFoundation.

## Funcionalidades
- Seleciona uma imagem da fototeca com `PhotosPicker`.
- Pode carregar imagens de exemplo do catálogo de assets.
- Reconhece texto na imagem.
- Exibe o texto reconhecido em área rolável.
- Lê o conteúdo com voz configurada para português do Brasil.

## Tecnologias
Swift, SwiftUI, PhotosUI, Vision (`RecognizeTextRequest`) e AVFoundation (`AVSpeechSynthesizer`).

## Arquivos
- `StudyCastView.swift` — seleção, análise e leitura.
- `StudyCastViewModel.swift` — OCR e síntese de fala.
- `Projeto_Visao_ComputacionalApp.swift` — inicializa em `StudyCastView`.
- `ContentView.swift` — placeholder que não é a tela inicial atual.
- `16 - [PDF] IA - Vision.pdf` — material de apoio.

A tela disponibiliza exemplos chamados `exemplo1`, `exemplo2` e `exemplo3`; esses image sets precisam ser adicionados ao `Assets.xcassets`. A seleção pela galeria continua disponível sem esses exemplos.

## Executar
Crie um projeto iOS App com SwiftUI, adicione os fontes ao target e configure os assets. Não há projeto Xcode completo nesta pasta. O código não configura backend ou serviço remoto.