# Desafio 10 — StudyCast: leitura de texto em imagens

Aplicativo de apoio à leitura que identifica texto presente em uma imagem e permite reproduzi-lo em voz alta. O projeto combina seleção de fotos, reconhecimento de texto com Vision e síntese de fala com AVFoundation.

## Funcionalidades

- Seleciona uma imagem na fototeca usando `PhotosPicker`.
- Permite carregar imagens de exemplo incluídas no catálogo de assets.
- Executa reconhecimento de texto na imagem selecionada.
- Exibe o texto reconhecido em uma área rolável.
- Lê o conteúdo identificado com voz configurada para português do Brasil.

## Tecnologias

- Swift e SwiftUI
- PhotosUI (`PhotosPicker`)
- Vision (`RecognizeTextRequest`)
- AVFoundation (`AVSpeechSynthesizer` e `AVSpeechUtterance`)

## Arquivos e recursos

- `StudyCastView.swift` — seleção da imagem, ações de análise e leitura.
- `StudyCastViewModel.swift` — reconhecimento de texto e síntese de fala.
- `Projeto_Visao_ComputacionalApp.swift` — inicializa o app diretamente em `StudyCastView`.
- `ContentView.swift` — view de exemplo/placeholder; não é a tela aberta pelo ponto de entrada atual.
- `16 - [PDF] IA - Vision.pdf` — material de apoio.

A tela disponibiliza três exemplos chamados `exemplo1`, `exemplo2` e `exemplo3`. Esses assets precisam existir no `Assets.xcassets` do projeto Xcode; não foram encontrados como recursos versionados nesta pasta. A seleção de uma foto pela galeria continua disponível independentemente dos exemplos.

## Executar

Crie um projeto **iOS App** com SwiftUI no Xcode, adicione os arquivos Swift ao target e configure os assets de exemplo. Não há um projeto Xcode completo nesta pasta. A análise e a síntese de fala são realizadas pelas frameworks do sistema; o código não configura backend ou serviço remoto.
