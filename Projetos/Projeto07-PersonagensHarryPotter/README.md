# Projeto 07 — Explorador de personagens de Harry Potter

Aplicativo SwiftUI que consulta uma API pública de personagens, apresenta uma lista filtrável por casa e permite abrir detalhes de cada personagem.

## Funcionalidades
- Consulta `https://hp-api.onrender.com/api/characters`.
- Filtra personagens humanos que possuam imagem.
- Filtro por Gryffindor, Slytherin, Hufflepuff, Ravenclaw ou todas as casas.
- Lista com imagem, nome, casa e ator.
- Detalhes de nascimento, ancestralidade, patrono, espécie, gênero, características, ocupação e varinha, quando disponíveis.
- Estados de carregamento, erro, lista vazia e tentativa novamente.

## Arquivos
- `ContentView.swift` — lista e filtros.
- `Model.swift` — modelos `HaPo` e `Wand`.
- `Service.swift` — requisição e decodificação.
- `ViewModel.swift` — carregamento e estado.
- `DetailView.swift` — detalhes.
- `Desafio_HarryPotterApp.swift` — entrada do app.
- `Assets.xcassets/` — imagens utilizadas pela interface.

## Configuração
É necessária conexão com a internet e disponibilidade da API. O código referencia o asset `hogwards`; confirme que a imagem e as imagens das casas estão organizadas como image sets válidos em `Assets.xcassets` e incluídas no target.

## Executar
Crie um projeto iOS App com SwiftUI, adicione fontes e assets ao target e execute pelo Xcode. Esta pasta não contém um projeto Xcode completo.