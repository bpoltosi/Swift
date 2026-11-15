# Desafio 01 — Abas e lista de itens

Aplicativo de estudo de navegação com **TabView** e apresentação de coleções com **List**. A interface reúne páginas visuais com diferentes cores e símbolos, além de uma aba com itens descritos em uma lista.

## Funcionalidades previstas no código

- Navegação por quatro abas.
- Três telas ilustrativas com fundos rosa, azul e cinza e ícones do SF Symbols.
- Uma lista com nomes de itens e seus respectivos símbolos.
- Modelo simples `ItemLista`, identificado por UUID.

## Tecnologias

- Swift
- SwiftUI
- `TabView`, `tabItem`, `NavigationView`, `List`, `ForEach` e SF Symbols.

## Executar

A pasta contém os arquivos-fonte Swift, mas não um projeto Xcode completo. Crie um projeto **iOS App** com SwiftUI, adicione `ContentView.swift` e `Desafio_01App.swift` ao target e execute pelo Xcode.

## Pendência conhecida

O arquivo `ContentView.swift` contém um erro de sintaxe na declaração do último item de `itensDaLista`. A expressão atual usa `icone: paintpalette"`; para compilar, corrija para `icone: "paintpalette"`. Esta documentação não altera o código-fonte.
