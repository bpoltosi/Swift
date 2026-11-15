# Projeto 09 — Monitor de umidade via WebSocket

Protótipo IoT composto por aplicativo iOS e firmware para ESP8266/NodeMCU. O firmware lê um sensor analógico no pino A0 e transmite os dados por WebSocket; o app apresenta indicador e gráfico.

## Funcionalidades
- Leitura analógica periódica.
- Servidor WebSocket na porta `81`.
- Envio de JSON aos clientes conectados.
- Indicador de umidade e estado textual.
- Gráfico com até 30 leituras recentes.

## Tecnologias e hardware
Swift, SwiftUI, Swift Charts, `URLSessionWebSocketTask`, Arduino/C++, `ESP8266WiFi`, `WebSocketsServer`, ESP8266/NodeMCU e sensor analógico.

## Arquivos
- `ContentView.swift` — indicador e gráfico.
- `SensorViewModel.swift` — conexão, JSON e histórico.
- `Desafio_SensorApp.swift` — entrada do app.
- `WebSocketUmidade.ino` — firmware.
- `11 - [PDF] IoT - WebSocket.pdf` — material de apoio.

## Configuração
Instale o suporte ESP8266 e a biblioteca WebSockets no Arduino IDE, configure Wi-Fi e carregue o sketch. Identifique o IP pelo Monitor Serial e atualize a URL em `SensorViewModel.swift`, mantendo a porta 81. iPhone e placa devem estar na mesma rede.

## Contrato JSON
O firmware envia `adc` como leitura bruta de A0 e `umidade` como percentual calculado. O app usa `adc` para calcular o percentual e exibir a leitura bruta, sem converter um valor já convertido. O IP no código Swift é exemplo. Monte o target iOS no Xcode; não há projeto Xcode completo nesta pasta.