# Projeto 10 — Histórico de umidade com API própria

Projeto IoT que envia leituras de um sensor para um fluxo Node-RED e consulta registros armazenados para exibição em um app iOS. Esta versão utiliza HTTP e consulta periódica do histórico.

## Fluxo
1. O firmware lê o sensor analógico no pino A0.
2. O ESP8266 envia a umidade para o endpoint POST do Node-RED.
3. O fluxo pode persistir os dados no banco configurado.
4. O app consulta o endpoint GET e atualiza indicador e gráfico.

## Endpoints configurados
- Firmware: `POST http://192.168.128.181:1880/umidadePOST`
- Aplicativo: `GET http://192.168.128.181:1880/umidadeGET`

Altere o IP para o endereço da máquina que executa Node-RED.

## Dados
O app decodifica uma lista JSON de documentos com `_id`, `umidade` e `timestamp`. O campo `umidade` aceita texto numérico ou número JSON. O gráfico mantém até 50 registros e o indicador utiliza o último valor, limitado a 0–100%.

O sketch envia o valor em formulário (`application/x-www-form-urlencoded`) no campo `umidade`. Embora uma descrição anterior citasse ESP32, o sketch utiliza bibliotecas específicas do ESP8266.

## Arquivos
- `ContentView.swift`, `SensorViewModel.swift`, `Desafio_SensorApp.swift`.
- `CodigoSensorUmidadePOST.ino` — firmware.
- `12 - [PDF] IoT - API.pdf` — material de apoio.

## Executar
Configure os fluxos Node-RED e confirme as rotas POST/GET. Ajuste os IPs nos arquivos Swift e Arduino. Crie um projeto iOS SwiftUI no Xcode e adicione os fontes ao target. Para iPhone físico, configure App Transport Security para HTTP local. Não há projeto Xcode completo nesta pasta.