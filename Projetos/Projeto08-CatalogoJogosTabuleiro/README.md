# Projeto 08 — Catálogo de jogos de tabuleiro

Aplicativo SwiftUI para explorar um catálogo de jogos carregado por API própria. Permite pesquisar e filtrar jogos, abrir detalhes e marcar favoritos durante a sessão.

## Funcionalidades
- Carrega o catálogo usando `GET /getJogos`.
- Exibe jogos em grade, com imagem ou símbolo substituto.
- Pesquisa por nome ou categoria.
- Filtros por categorias.
- Detalhes com descrição, número de jogadores, duração e dificuldade.
- Favoritos mantidos em memória.
- Estados de carregamento, erro e nova tentativa.

**Escopo atual:** somente a consulta GET está integrada. Criar, atualizar e excluir jogos não está implementado na interface. Favoritos não são persistidos.

## API Node-RED
```http
GET http://127.0.0.1:1880/getJogos
```
Os objetos devem conter `id`, `nome`, `descricao`, `jogadoresMin`, `jogadoresMax`, `duracaoMinutos`, `idadeMinima`, `categoria`, `dificuldade` e `imagemURL`. O decodificador aceita lista, objeto ou envelope `jogos`; categoria pode ser texto ou lista.

## Arquivos
- `ContentView.swift` — modelos, cliente HTTP e interface.
- `Jogos_TabuleiroApp.swift` — entrada do aplicativo.
- `09 - [PDF] Swift - CRUD.pdf` — material de apoio.

## Executar
Inicie o fluxo Node-RED e configure `JogosAPI.baseURL`. No simulador, localhost aponta para o Mac; em iPhone físico, use o IP local da máquina com Node-RED. Verifique App Transport Security para HTTP local. Crie o target iOS SwiftUI no Xcode; não há projeto Xcode completo nesta pasta.