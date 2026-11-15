# Desafio 07 — Histórico de umidade com API própria

Projeto de IoT que envia leituras de um sensor de umidade para um fluxo Node-RED e consulta os registros armazenados para exibi-los em um aplicativo iOS. Diferentemente do desafio WebSocket, esta versão utiliza endpoints HTTP e consulta periódica do histórico.

## Fluxo da aplicação

1. O firmware lê o sensor analógico conectado ao pino A0.
2. O ESP8266 envia a leitura calculada para o endpoint POST do Node-RED.
3. O fluxo pode persistir os dados no banco utilizado pela atividade.
4. O aplicativo consulta o endpoint GET periodicamente e atualiza o indicador e o gráfico.

## Endpoints configurados no código

- Firmware: `POST http://192.168.128.181:1880/umidadePOST`
- Aplicativo: `GET http://192.168.128.181:1880/umidadeGET`

O endereço IP está fixo nos arquivos e deve ser ajustado para a máquina que executa o Node-RED na rede utilizada.

## Formato dos dados

O app decodifica uma lista JSON de documentos com os campos `_id`, `umidade` e `timestamp`. O campo `umidade` é tratado como texto numérico. O gráfico conserva os 50 registros mais recentes e o indicador principal utiliza o último valor recebido.

O sketch envia o valor de umidade em formato de formulário (`application/x-www-form-urlencoded`) no campo `umidade`.

## Tecnologias e hardware

- Swift, SwiftUI e Swift Charts
- URLSession para requisições HTTP
- Node-RED e o endpoint de persistência configurado no fluxo
- Arduino/C++ com `ESP8266WiFi` e `ESP8266HTTPClient`
- Placa ESP8266/NodeMCU e sensor analógico

**Observação:** embora o README anterior mencionasse ESP32, o sketch versionado utiliza bibliotecas específicas do ESP8266. A placa e o ambiente Arduino devem corresponder a esse código.

## Arquivos

- `ContentView.swift` — apresentação do valor atual e gráfico.
- `SensorViewModel.swift` — consulta periódica, decodificação e montagem do histórico.
- `Desafio_SensorApp.swift` — ponto de entrada do aplicativo.
- `CodigoSensorUmidadePOST.ino` — firmware que publica as leituras.

## Executar

Configure e importe os fluxos correspondentes no Node-RED, confirme que os endpoints POST e GET estão ativos e ajuste os IPs nos arquivos Swift e Arduino. Para o app, crie um projeto iOS SwiftUI no Xcode e adicione os fontes ao target; não há um projeto Xcode completo nesta pasta. Para um iPhone físico, libere o acesso HTTP local conforme a política de App Transport Security do target.
