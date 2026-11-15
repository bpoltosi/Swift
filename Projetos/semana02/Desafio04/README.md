# Desafio 04 — Explorador de personagens de Harry Potter

Aplicativo SwiftUI que consulta uma API pública de personagens do universo Harry Potter, apresenta uma lista filtrável por casa e permite abrir uma tela com informações detalhadas de cada personagem.

## Funcionalidades

- Consulta os personagens no endpoint `https://hp-api.onrender.com/api/characters`.
- Filtra os resultados para manter personagens identificados como humanos e que possuam imagem.
- Permite filtrar a lista por Gryffindor, Slytherin, Hufflepuff, Ravenclaw ou todas as casas.
- Exibe imagem, nome, casa e ator na lista.
- Apresenta detalhes como nascimento, ancestralidade, patrono, ator, espécie, gênero, características físicas, ocupação e informações da varinha, quando disponíveis.
- Exibe estado de carregamento, estado vazio e mensagem de erro com opção para tentar novamente.

## Organização do código

- `ContentView.swift` — lista, filtros e estados da interface.
- `Model.swift` — modelos Codable `HaPo` e `Wand`.
- `Service.swift` — requisição HTTP e decodificação JSON.
- `ViewModel.swift` — carregamento assíncrono, tratamento de estado e filtragem inicial.
- `DetailView.swift` — apresentação das informações do personagem.
- `Desafio_HarryPotterApp.swift` — ponto de entrada.
- `Assets.xcassets/` — imagens de casas e imagem de fundo usada pela interface.

## Tecnologias

- Swift e SwiftUI
- URLSession e Codable
- Observation
- AsyncImage

## Dependências e configuração

É necessária conexão com a internet e disponibilidade da API externa. O código referencia um asset de fundo chamado `hogwards`; confirme que a imagem correspondente está configurada como image set no catálogo `Assets.xcassets` e incluída no target do aplicativo.

## Executar

O diretório contém fontes e recursos, mas não inclui um projeto Xcode completo. Crie um projeto **iOS App** com SwiftUI, adicione os arquivos e recursos ao target e execute pelo Xcode. A API é pública e a URL está definida em `ViewModel.swift`.
