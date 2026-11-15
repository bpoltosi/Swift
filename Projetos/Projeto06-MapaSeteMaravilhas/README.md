# Projeto 06 — Mapa das Sete Maravilhas

Aplicativo de exploração visual de sete pontos turísticos, construído com MapKit e SwiftUI. O mapa utiliza uma câmera inclinada para criar perspectiva 3D e permite selecionar locais por marcador ou menu.

## Funcionalidades
- Marcadores para Cristo Redentor, Machu Picchu, Chichén Itzá, Coliseu, Petra, Taj Mahal e Grande Muralha da China.
- Seleção pelo menu ou toque no marcador.
- Câmera animada ao trocar de destino.
- Controles de zoom.
- Folha de detalhes com nome, descrição e imagem.

## Tecnologias
Swift, SwiftUI, MapKit (`Map`, `MapCamera`, `MapCameraPosition`, `Annotation`) e `AsyncImage`.

## Arquivos e material
- `ContentView.swift` — mapa e navegação.
- `Location.swift` — modelo e dados dos destinos.
- `SheetView.swift` — detalhes.
- `07 - [PDF] Swift - Mapas.pdf` — material de apoio.

## Dados e execução
Coordenadas, nomes e descrições são definidos localmente; não há API de destinos nem uso da localização atual. O mapa e as imagens remotas dependem de internet. Crie um projeto iOS App com SwiftUI no Xcode, adicione os três arquivos ao target e execute. Esta pasta não contém um projeto Xcode completo.