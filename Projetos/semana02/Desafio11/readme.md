# Desafio 11 — Guia das Sete Maravilhas com Gemini

Aplicativo SwiftUI que reúne um mapa interativo de sete destinos turísticos e uma funcionalidade de inteligência artificial para gerar um roteiro de um dia e três dicas práticas sobre o local selecionado.

## Funcionalidades

- Exibe marcadores para Cristo Redentor, Machu Picchu, Chichén Itzá, Coliseu, Petra, Taj Mahal e Grande Muralha da China.
- Permite selecionar destinos pelo mapa ou pelo menu e controlar o zoom.
- Apresenta uma folha com imagem e descrição do local.
- Envia o nome do destino selecionado ao modelo generativo para solicitar um roteiro curto de um dia e três dicas de visita.
- Exibe o estado de carregamento e a resposta gerada pelo serviço de IA.

## Tecnologias

- Swift e SwiftUI
- MapKit e AsyncImage
- Firebase AI / Firebase AI Logic
- Backend Google AI configurado por meio do Firebase
- App Check e configuração do Firebase no aplicativo

## Organização do código

- `ContentView.swift` — mapa e navegação entre destinos.
- `Location.swift` — modelo e dados estáticos das sete maravilhas.
- `SheetView.swift` — detalhes do destino e interação com a IA.
- `AITipsViewModel.swift` — prompt, chamada ao modelo e estado da resposta.
- `Desafio_04App.swift` — inicialização do Firebase e ponto de entrada.

O identificador de modelo configurado em `AITipsViewModel.swift` é `gemini-3.8-flash`. A chamada é feita pelo SDK Firebase AI; a disponibilidade do modelo e as permissões do projeto Google/Firebase precisam ser verificadas no ambiente que será utilizado.

## Configuração obrigatória do Firebase

O arquivo `GoogleService-Info.plist` não está incluído neste repositório. Cada pessoa que executar o app deve:

1. Criar ou utilizar um projeto Firebase próprio e registrar um aplicativo iOS com o bundle identifier correspondente.
2. Habilitar/configurar o produto Firebase AI e o backend Google AI conforme a documentação do Firebase.
3. Adicionar ao target o arquivo `GoogleService-Info.plist` gerado para o próprio aplicativo.
4. Adicionar pelo Swift Package Manager as bibliotecas Firebase exigidas pelos imports do código, incluindo Firebase AI / Firebase AI Logic e Firebase App Check.
5. Configurar o App Check para o ambiente de desenvolvimento conforme a configuração usada no projeto.

Não compartilhe nem versione arquivos de configuração que contenham credenciais do seu projeto. O mapa e as imagens remotas também dependem de conexão com a internet.

## Executar

Esta pasta contém fontes e material de apoio, mas não um projeto Xcode completo. Crie um projeto **iOS App** com SwiftUI, adicione os arquivos ao target, configure os assets e conclua a integração Firebase antes de executar. Sem o arquivo de configuração e as dependências, a chamada de IA não estará pronta para uso.
