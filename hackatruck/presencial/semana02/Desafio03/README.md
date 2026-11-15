# Desafio 03 — Mapa das Sete Maravilhas

Aplicativo de exploração visual de sete pontos turísticos, construído com **MapKit** e SwiftUI. O mapa utiliza uma câmera inclinada para criar uma perspectiva 3D e permite selecionar os locais por marcador ou menu.

## Funcionalidades

- Exibe marcadores para Cristo Redentor, Machu Picchu, Chichén Itzá, Coliseu, Petra, Taj Mahal e Grande Muralha da China.
- Permite selecionar um destino pelo menu superior ou tocar diretamente em seu marcador.
- Centraliza e anima a câmera ao trocar de local.
- Oferece controles para aproximar e afastar o mapa.
- Abre uma folha de detalhes com nome, descrição e imagem do local.

## Tecnologias

- Swift
- SwiftUI
- MapKit (`Map`, `MapCamera`, `MapCameraPosition` e `Annotation`)
- `AsyncImage` para carregar imagens remotas.

## Arquivos

- `ContentView.swift` — mapa, seleção de local, zoom e apresentação dos detalhes.
- `Location.swift` — modelo `Location` e dados estáticos dos sete destinos.
- `SheetView.swift` — conteúdo da folha de detalhes.

## Dados e conectividade

As coordenadas, nomes e descrições estão definidos localmente em `Location.swift`; não há consulta a uma API de destinos nem uso da localização atual do aparelho. O mapa e as imagens remotas dependem de conexão com a internet.

## Executar

Esta pasta contém os fontes Swift, sem um projeto Xcode completo. Crie um projeto **iOS App** com SwiftUI, adicione os três arquivos ao target e execute em um dispositivo ou simulador com suporte às APIs MapKit utilizadas.
