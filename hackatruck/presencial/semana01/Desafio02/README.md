# Desafio 02 — Cartão de apresentação HackaTruck

Exercício de composição de uma interface SwiftUI com imagem e textos. A tela apresenta a identificação do HackaTruck e destaca informações do programa em uma disposição horizontal.

## Funcionalidades

- Exibe uma imagem circular com contorno e sombra.
- Apresenta o título **HackaTruck**.
- Exibe os textos “77 Universidades” e “5 regiões do Brasil”.
- Utiliza estilos tipográficos, cores e espaçamento para estabelecer hierarquia visual.

## Tecnologias

- Swift
- SwiftUI
- `Image`, `VStack`, `HStack`, modificadores de fonte e decoração.

## Arquivos e recursos

- `ContentView.swift` — interface do cartão.
- `Desafio02App.swift` — ponto de entrada do aplicativo.

**Recurso necessário:** o código referencia `Image("hackatruck")`. O arquivo de imagem ou catálogo de assets com esse nome não está presente nesta pasta. Antes de executar, adicione ao projeto um conjunto de imagens chamado `hackatruck` em `Assets.xcassets` (ou ajuste o nome usado no código).

## Executar

Esta pasta contém os fontes Swift, não um projeto Xcode completo. Crie um projeto **iOS App** com SwiftUI no Xcode, adicione os arquivos ao target, inclua o asset `hackatruck` e execute no simulador ou em um iPhone compatível.
