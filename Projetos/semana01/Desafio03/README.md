# Desafio 03 — Tela de boas-vindas

Pequena aplicação SwiftUI que demonstra entrada de texto, estado de interface, composição visual com imagens e apresentação de um alerta a partir de uma ação do usuário.

## Funcionalidades

- Apresenta a mensagem “Bem-vindo”.
- Permite digitar um nome em um campo de texto.
- Exibe imagens de fundo e de destaque.
- Abre um alerta ao pressionar **Entrar**.

O valor digitado é mantido no estado da view, mas ainda não é utilizado para personalizar a mensagem do alerta ou navegar para outra tela.

## Tecnologias

- Swift
- SwiftUI
- `@State`, `TextField`, `Button`, `alert` e composição com `ZStack`/ `VStack`.

## Arquivos e recursos

- `ContentView.swift` — tela e comportamento do formulário.
- `Desafio03App.swift` — ponto de entrada.
- `fundo.png` e `frenteRBG.png` — imagens disponíveis no diretório.

O código procura assets chamados exatamente `Fundo` e `Frente`. Ao montar o projeto no Xcode, adicione as imagens ao `Assets.xcassets` com esses nomes de conjunto (respeitando maiúsculas e minúsculas). O arquivo JPEG adicional deste diretório não é referenciado pelo código atual.

## Executar

Os fontes não estão acompanhados de um projeto Xcode completo. Crie um projeto **iOS App** com SwiftUI, adicione os arquivos Swift ao target e registre as duas imagens no catálogo de assets antes de executar.
