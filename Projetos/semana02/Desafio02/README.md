# Desafio 02 — Seleção de cor e navegação

Aplicativo SwiftUI que recebe um texto, permite selecionar uma cor e um símbolo e navega para uma tela de resultado que utiliza a seleção feita pelo usuário.

## Funcionalidades

- Campo de texto para inserir uma mensagem.
- Grade com quatro opções de cor: vermelho, azul, cinza e roxo.
- Cada opção é associada a um símbolo do SF Symbols.
- Ao tocar em uma opção, o app navega para uma segunda tela.
- A tela de resultado exibe o texto digitado sobre o fundo escolhido e apresenta o símbolo correspondente.

## Tecnologias

- Swift
- SwiftUI
- `@State`, `LazyVGrid`, `NavigationView`, `NavigationLink` e SF Symbols.

## Arquivos

- `ContentView.swift` — tela de seleção e view de resultado.
- `Desafio_02App.swift` — ponto de entrada do aplicativo.

## Executar

Não há um projeto `.xcodeproj` ou `.xcworkspace` nesta pasta. Crie um projeto **iOS App** com SwiftUI no Xcode, adicione os arquivos ao target e execute no simulador ou em um iPhone compatível. O exercício não depende de API ou backend.
