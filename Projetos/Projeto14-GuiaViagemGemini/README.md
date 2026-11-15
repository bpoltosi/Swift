# Projeto 14 — Guia das Sete Maravilhas com Gemini

Aplicativo SwiftUI que reúne um mapa interativo de sete destinos turísticos e uma funcionalidade de IA para gerar um roteiro de um dia e três dicas práticas sobre o local selecionado.

## Funcionalidades
- Marcadores para Cristo Redentor, Machu Picchu, Chichén Itzá, Coliseu, Petra, Taj Mahal e Grande Muralha da China.
- Seleção de destinos pelo mapa ou menu e controle de zoom.
- Folha com imagem e descrição do local.
- Solicita ao modelo generativo um roteiro de um dia e três dicas sobre o destino.
- Apresenta carregamento e resposta da IA.

## Tecnologias
Swift, SwiftUI, MapKit, AsyncImage, Firebase AI / Firebase AI Logic, backend Google AI e Firebase App Check.

## Arquivos
- `ContentView.swift` — mapa e navegação.
- `Location.swift` — modelo e dados dos destinos.
- `SheetView.swift` — detalhes e interação com IA.
- `AITipsViewModel.swift` — prompt e chamada ao modelo.
- `Desafio_04App.swift` — configuração Firebase e entrada.
- `14 - [PDF] IA - Gemini IA.pdf` — material de apoio.

O identificador configurado no código é `gemini-3.8-flash`; confirme sua disponibilidade e as permissões no projeto Firebase que será usado.

## Configuração Firebase
O arquivo `GoogleService-Info.plist` não está no repositório. Crie/registe seu app iOS no Firebase, habilite o produto Firebase AI e configure o backend Google AI, adicione o plist privado ao target, instale pelo Swift Package Manager os módulos requeridos pelo código e configure App Check. Não versione credenciais pessoais.

## Executar
Crie um projeto iOS App com SwiftUI no Xcode, adicione fontes e assets, configure Firebase e dependências. Esta pasta não contém projeto Xcode completo. Mapa e imagens remotas exigem internet.