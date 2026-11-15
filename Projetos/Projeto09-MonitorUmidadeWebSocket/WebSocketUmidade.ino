#include <ESP8266WiFi.h>
#include <WebSocketsServer.h>

// Credenciais da rede Wi-Fi
const char* ssid = "HackaTruckIoT";
const char* password = "iothacka";

// Servidor WebSocket na porta 81
WebSocketsServer webSocket(81);

int calcularUmidadePercentual(int valorADC) {
  float percentual = 100.0 * ((1024.0 - (float)valorADC) / 1024.0);
  if (percentual < 0) percentual = 0;
  if (percentual > 100) percentual = 100;
  return (int)percentual;
}

void setup() {
  Serial.begin(115200);
  delay(100);

  Serial.println();
  Serial.print("Conectando à rede Wi-Fi: ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println();
  Serial.print("Wi-Fi conectado! Endereço IP do NodeMCU: ");
  Serial.println(WiFi.localIP());

  webSocket.begin();
  Serial.println("Servidor WebSocket iniciado na porta 81.");
}

void loop() {
  webSocket.loop();

  // Leitura analógica no pino A0
  int valorADC = analogRead(A0);
  int umidadePercentual = calcularUmidadePercentual(valorADC);

  // Contrato: adc contém a leitura bruta; umidade contém o percentual.
  String json = "{\"adc\":" + String(valorADC)
              + ",\"umidade\":" + String(umidadePercentual) + "}";

  webSocket.broadcastTXT(json);

  Serial.print("[ADC A0]: ");
  Serial.print(valorADC);
  Serial.print(" | [Umidade]: ");
  Serial.print(umidadePercentual);
  Serial.print("% | [JSON]: ");
  Serial.println(json);

  delay(2000);
}
