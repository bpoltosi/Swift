# Projeto 03 — Tela de boas-vindas

Aplicação SwiftUI que demonstra entrada de texto, estado de interface, composição visual com imagens e apresentação de um alerta a partir de uma ação do usuário.

## Funcionalidades
- Exibe a mensagem “Bem-vindo”.
- Permite digitar um nome.
- Apresenta imagens de fundo e destaque.
- Abre um alerta ao pressionar Entrar.

O nome digitado é armazenado em estado, mas ainda não personaliza o alerta nem inicia navegação.

## Tecnologias
Swift, SwiftUI, `@State`, `TextField`, `Button`, `alert`, `ZStack` e `VStack`.

## Arquivos e recursos
- `ContentView.swift` e `Desafio03App.swift`.
- `fundo.png` e `frenteRBG.png`.
- `04 - [PDF] Swift - User Inputs.pdf` — material de apoio.

O código procura image sets chamados `Fundo` e `Frente`. Registre as imagens no `Assets.xcassets` com esses nomes exatos. O JPEG adicional não é referenciado no código atual.

## Executar
Crie um projeto iOS App no Xcode, adicione os fontes ao target e configure os dois image sets antes de executar. Esta pasta não contém um projeto Xcode completo.