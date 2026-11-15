# Desafio 05 — Catálogo de jogos de tabuleiro

Aplicativo SwiftUI para explorar um catálogo de jogos de tabuleiro carregado por uma API própria. A interface permite pesquisar e filtrar jogos, abrir detalhes e marcar favoritos durante a sessão.

## Funcionalidades

- Carrega os jogos por HTTP usando `GET /getJogos`.
- Exibe catálogo em grade, com imagem ou símbolo substituto.
- Pesquisa por nome ou categoria.
- Filtra por categorias predefinidas.
- Abre uma tela de detalhes com descrição, número de jogadores, duração e dificuldade.
- Permite adicionar e remover favoritos em memória.
- Apresenta estado de carregamento, erro e ação para tentar novamente.

**Escopo atual:** o aplicativo implementa a consulta GET. A criação, atualização e exclusão de jogos não estão integradas à interface neste desafio. Os favoritos também não são persistidos após o encerramento do app.

## API Node-RED

Endpoint utilizado no código:

```http
GET http://127.0.0.1:1880/getJogos
```

A resposta deve ser JSON e conter jogos com os campos:

- `id`, `nome`, `descricao`
- `jogadoresMin`, `jogadoresMax`
- `duracaoMinutos`, `idadeMinima`
- `categoria`, `dificuldade`, `imagemURL`

O decodificador aceita uma lista de jogos ou objetos que contenham os jogos, inclusive no formato envelopado pela chave `jogos`. O campo `categoria` pode ser uma string ou uma lista de strings.

## Configuração de rede

- No simulador, `127.0.0.1` aponta para o Mac que executa o simulador.
- Em um iPhone físico, substitua o endereço em `JogosAPI.baseURL` pelo IP local da máquina que executa o Node-RED, mantendo a porta e a rota corretas.
- O dispositivo e o Node-RED precisam estar acessíveis pela mesma rede.
- Como o código usa HTTP local, verifique a política de App Transport Security do target durante o desenvolvimento.

## Arquivos

- `ContentView.swift` — modelos de leitura, cliente HTTP e interface do catálogo.
- `Jogos_TabuleiroApp.swift` — ponto de entrada.
- `09 - [PDF] Swift - CRUD.pdf` — material de apoio do desafio.

## Executar

A pasta não contém um projeto Xcode completo. Crie um projeto **iOS App** com SwiftUI, adicione o arquivo Swift ao target, importe e inicie o fluxo correspondente no Node-RED e configure a URL de acordo com o ambiente antes de executar.
