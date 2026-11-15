# ProjetosSwift

Repositório de estudos e aplicações desenvolvidas em **Swift** durante a trilha presencial do **HackaTruck MakerSpace**. Reúne exercícios de fundamentos da linguagem e projetos práticos independentes, explorando desenvolvimento iOS, SwiftUI, integração com APIs, IoT, mapas e recursos de inteligência artificial.

O objetivo é manter o material organizado, documentado e fácil de explorar, permitindo consultar cada atividade isoladamente e acompanhar a evolução dos conteúdos estudados.

## Conteúdo

O repositório está dividido em duas áreas:

| Diretório | Conteúdo |
|---|---|
| [`Exercicios/`](./Exercicios/) | Exercícios individuais de lógica e fundamentos de Swift. |
| [`Projetos/`](./Projetos/) | Aplicações práticas independentes, com código, recursos e documentação próprios. |

## Projetos práticos

Os projetos estão organizados diretamente em `Projetos/`, sem agrupamento por semana. A numeração é contínua para evitar colisões entre desafios que originalmente possuíam a mesma numeração em etapas diferentes do curso.

| Nº | Projeto | Principais conceitos |
|---:|---|---|
| 01 | [Layout SwiftUI](./Projetos/Projeto01-LayoutSwiftUI/) | Views, stacks, alinhamento e composição de interfaces. |
| 02 | [Cartão HackaTruck](./Projetos/Projeto02-CartaoHackaTruck/) | Imagens, tipografia e composição visual. |
| 03 | [Tela de boas-vindas](./Projetos/Projeto03-TelaBoasVindas/) | Estado, entrada de dados, botões e alertas. |
| 04 | [Abas e listas](./Projetos/Projeto04-AbasLista/) | TabView, NavigationView, List e ForEach. |
| 05 | [Cores e navegação](./Projetos/Projeto05-CoresNavegacao/) | Estado, seleção, LazyVGrid e NavigationLink. |
| 06 | [Mapa das Sete Maravilhas](./Projetos/Projeto06-MapaSeteMaravilhas/) | MapKit, coordenadas, marcadores e câmera do mapa. |
| 07 | [Explorador de Harry Potter](./Projetos/Projeto07-PersonagensHarryPotter/) | API REST, URLSession, decodificação JSON e filtros. |
| 08 | [Catálogo de jogos de tabuleiro](./Projetos/Projeto08-CatalogoJogosTabuleiro/) | SwiftUI, consumo de API e integração com Node-RED. |
| 09 | [Monitor de umidade via WebSocket](./Projetos/Projeto09-MonitorUmidadeWebSocket/) | ESP8266, sensor analógico, WebSocket e Swift Charts. |
| 10 | [Monitor de umidade via API](./Projetos/Projeto10-MonitorUmidadeAPI/) | IoT, HTTP, Node-RED e consulta de histórico. |
| 11 | [HackaTruck GastroBar](./Projetos/Projeto11-GastroBarCardapio/) | CRUD, integração HTTP, gerenciamento de cardápio e Translation. |
| 12 | [Classificação de imagens com Core ML](./Projetos/Projeto12-ClassificacaoCoreML/) | Core ML, Vision e inferência local. |
| 13 | [StudyCast — OCR e leitura em voz alta](./Projetos/Projeto13-StudyCastOCR/) | Vision, PhotosUI, reconhecimento de texto e AVFoundation. |
| 14 | [Guia das Sete Maravilhas com Gemini](./Projetos/Projeto14-GuiaViagemGemini/) | MapKit, Firebase AI e geração de conteúdo com IA. |

Cada projeto possui um README próprio com descrição, funcionalidades, tecnologias, arquivos, dependências e instruções específicas. Consulte a documentação individual antes de executar uma aplicação.

## Tecnologias e assuntos explorados

Ao longo dos exercícios e projetos, o repositório aborda:

- **Swift:** sintaxe, tipos, estruturas, funções, coleções, opcionais e organização de código.
- **SwiftUI:** views, estado, layouts, listas, navegação, formulários e componentes de interface.
- **Integração com serviços:** requisições HTTP, APIs REST, JSON e WebSocket.
- **Mapas e localização visual:** MapKit, coordenadas, anotações e câmeras.
- **Internet das Coisas:** ESP8266/NodeMCU, sensores, Wi-Fi e comunicação entre hardware e aplicativo.
- **Dados e visualização:** histórico de leituras e gráficos com Swift Charts.
- **Inteligência artificial no dispositivo e na nuvem:** Core ML, Vision, OCR e integração com Firebase AI/Gemini.
- **Recursos do iOS:** PhotosUI, AVFoundation e Translation.

Nem todos os projetos utilizam todas essas tecnologias. As dependências específicas estão indicadas em cada diretório.

## Como explorar e executar

### Requisitos gerais

Para desenvolver e executar os aplicativos iOS, normalmente são necessários:

- Um Mac compatível com uma versão do **Xcode** que suporte a versão de Swift e o deployment target do projeto.
- Xcode com as ferramentas de linha de comando instaladas.
- Um simulador iOS ou dispositivo físico compatível.
- Dependências e recursos adicionais descritos no README do projeto escolhido.

> **Importante:** este repositório organiza os fontes e materiais de estudo por atividade. Os diretórios não necessariamente incluem um projeto Xcode completo (`.xcodeproj` ou `.xcworkspace`). Em projetos sem esses arquivos, crie um projeto iOS App com SwiftUI no Xcode e adicione os arquivos Swift e recursos correspondentes ao target.

### Executar um projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/bpoltosi/ProjetosSwift.git
   ```
2. Entre no diretório:
   ```bash
   cd ProjetosSwift
   ```
3. Escolha um projeto dentro de `Projetos/`.
4. Leia o README da pasta para identificar arquivos, assets, dependências e configurações necessárias.
5. Crie ou abra o projeto no Xcode, conforme as instruções específicas.
6. Adicione ao target apenas os fontes e recursos daquele projeto.
7. Selecione um simulador ou dispositivo e execute pelo Xcode.

**Não adicione todos os arquivos Swift de `Projetos/` ao mesmo target.** Os projetos são independentes e podem conter tipos, estruturas e pontos de entrada com nomes iguais.

### Exercícios de Swift

Os arquivos de `Exercicios/` são atividades individuais. Abra cada arquivo em um ambiente compatível com Swift, como um playground ou projeto Swift no Xcode, observando que alguns exercícios podem depender de entrada pelo console.

## Configurações e serviços externos

Alguns projetos dependem de serviços, hardware ou recursos que precisam ser configurados fora do repositório:

| Projeto | Dependência ou configuração |
|---|---|
| 02 — Cartão HackaTruck | Asset de imagem `hackatruck`. |
| 03 — Tela de boas-vindas | Image sets `Fundo` e `Frente`. |
| 06 — Mapa das Sete Maravilhas | Conexão com a internet para mapas e imagens remotas. |
| 07 — Harry Potter | API pública de personagens e conexão com a internet. |
| 08 — Catálogo de jogos | API/fluxo Node-RED e configuração de endereço de rede. |
| 09 — Monitor WebSocket | ESP8266, sensor, Wi-Fi e servidor WebSocket. |
| 10 — Monitor via API | ESP8266, sensor e endpoints HTTP no Node-RED. |
| 11 — GastroBar | Fluxo Node-RED, endpoints CRUD e banco configurado. |
| 12 — Core ML | Modelo MobileNetV2 e imagens incluídas no target. |
| 13 — StudyCast | Assets de exemplo opcionais; acesso à fototeca para selecionar imagens. |
| 14 — Guia Gemini | Projeto Firebase, Firebase AI, App Check e configuração privada do aplicativo. |

Endereços IP, credenciais, nomes de assets e identificadores de serviços presentes nos exemplos podem precisar de ajustes para o ambiente de execução. Não compartilhe credenciais ou arquivos privados, como configurações pessoais do Firebase, em commits públicos.

Para integrações locais por HTTP, confira também as regras de App Transport Security e a configuração de rede do simulador ou dispositivo.

## Organização e convenções

- Cada pasta em `Projetos/` representa uma aplicação prática independente.
- A numeração dos projetos é sequencial e não corresponde necessariamente ao número original do desafio no curso.
- O README de cada projeto é a referência para suas instruções e limitações específicas.
- Arquivos de apoio, imagens e modelos devem permanecer junto ao projeto a que pertencem.
- Os fontes de projetos diferentes não devem ser misturados no mesmo target do Xcode.
- Configurações locais e credenciais privadas não devem ser versionadas.

## Estado de validação

Este repositório é, antes de tudo, um portfólio de estudos e implementações práticas. A presença de um código ou de uma instrução de execução não significa que todas as combinações de Xcode, iOS, hardware, serviços externos e dependências tenham sido testadas recentemente.

Antes de considerar uma aplicação pronta para uso, valide:

- Compilação no Xcode e versão de iOS desejada.
- Presença e configuração de todos os assets.
- Disponibilidade e contrato dos serviços externos.
- Endereços de rede e conectividade do hardware, quando aplicável.
- Tratamento de erros, estados de carregamento e permissões.

## Contribuições e melhorias

Sugestões, correções e melhorias são bem-vindas. Ao propor uma alteração:

1. Identifique o projeto ou exercício afetado.
2. Mantenha a independência entre os projetos.
3. Atualize o README correspondente quando houver mudança de comportamento, dependência ou configuração.
4. Evite incluir credenciais, dados pessoais ou arquivos gerados desnecessários.
5. Informe os passos utilizados para validar a alteração.

## Autor

**Bruno Saldanha**  
GitHub: [@bpoltosi](https://github.com/bpoltosi)

## Contexto

Material desenvolvido durante as atividades do **HackaTruck MakerSpace**, reunindo exercícios e projetos práticos de programação Swift e desenvolvimento para plataformas Apple.

---

Se este repositório ajudar nos seus estudos, fique à vontade para explorar os projetos e acompanhar sua evolução.
