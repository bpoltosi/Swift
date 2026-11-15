# Desafio 06 — Monitor de umidade via WebSocket

Protótipo de IoT composto por um aplicativo iOS e um firmware para placa ESP8266/NodeMCU. O firmware lê um sensor analógico de umidade no pino A0 e transmite leituras por WebSocket; o app apresenta um indicador visual e um gráfico de histórico.

## Funcionalidades

- Leitura periódica do sensor analógico A0 no firmware.
- Inicialização de um servidor WebSocket na porta `81`.
- Transmissão de mensagens JSON para os clientes conectados.
- Exibição do nível de umidade e de um estado textual na interface.
- Gráfico com até 30 leituras recentes.

## Tecnologias e hardware

- Swift, SwiftUI e Swift Charts
- URLSessionWebSocketTask
- Arduino/C++ para ESP8266
- Bibliotecas `ESP8266WiFi` e `WebSocketsServer`
- Placa ESP8266/NodeMCU e sensor de umidade analógico

## Arquivos

- `ContentView.swift` — indicador, estados e gráfico.
- `SensorViewModel.swift` — conexão WebSocket, leitura do JSON e histórico.
- `Desafio_SensorApp.swift` — ponto de entrada do app.
- `WebSocketUmidade.ino` — firmware do ESP8266.

## Configuração

1. Instale no Arduino IDE o suporte à placa ESP8266 e a biblioteca WebSockets utilizada pelo sketch.
2. Configure a rede Wi-Fi no firmware e carregue `WebSocketUmidade.ino` na placa.
3. Abra o Monitor Serial para identificar o endereço IP atribuído à placa.
4. Atualize a URL WebSocket em `SensorViewModel.swift` para o IP correto, mantendo a porta `81`.
5. Execute o aplicativo e mantenha placa e iPhone na mesma rede local.

## Pendência de integração conhecida

O firmware calcula a porcentagem antes de enviar o campo JSON `umidade`. Já o ViewModel Swift interpreta esse campo como se fosse a leitura ADC bruta (0–1024) e calcula novamente a porcentagem. Os dois lados precisam adotar o mesmo contrato — enviar ADC bruto ou enviar percentual e não recalculá-lo no app — para que a leitura exibida seja confiável.

O endereço IP configurado no código Swift é apenas um valor de exemplo e deve ser substituído pelo IP real da placa. Este diretório não contém um projeto Xcode completo; monte o target iOS no Xcode e adicione os arquivos Swift.
