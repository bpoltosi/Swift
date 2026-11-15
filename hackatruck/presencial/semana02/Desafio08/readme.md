# Desafio 08 — HackaTruck GastroBar: gerenciamento de cardápio

Aplicativo SwiftUI para visualizar e administrar o cardápio de um restaurante fictício. A interface organiza os pratos por categoria e utiliza uma API própria em Node-RED para consultar, cadastrar, atualizar preço e excluir registros.

## Funcionalidades

- Lista pratos agrupados em Entrada, Principal, Sobremesa e Bebida.
- Exibe nome, preço e imagem remota de cada prato.
- Abre formulário para cadastrar um prato com nome, preço, URL da imagem e categoria.
- Permite editar o preço de um prato.
- Permite excluir um prato.
- Oferece uma ação de tradução do nome do prato por meio do framework `Translation`.

## API Node-RED

O código utiliza a base URL `http://127.0.0.1:1880` e as seguintes rotas:

| Método | Endpoint | Operação |
|---|---|---|
| GET | `/cardapioGET` | Consultar pratos |
| POST | `/cardapioPOST` | Cadastrar prato |
| PUT | `/cardapioPUT` | Atualizar preço |
| DELETE | `/cardapioDELETE` | Excluir prato |

Os registros utilizam `nome`, `preco`, `imagemUrl` e `categoria`. Para atualização e exclusão, o app também envia `_id` e `_rev`, campos utilizados pelo Cloudant para identificar a revisão do documento.

## Tecnologias

- Swift e SwiftUI
- URLSession, JSONSerialization e Codable
- Node-RED e Cloudant (conforme o fluxo de backend utilizado)
- Framework Apple Translation

## Arquivos

- `ContentView.swift` — encaminha para a tela principal.
- `GastroBarView.swift` — listagem por categoria e navegação.
- `CardapioViewModel.swift` — operações HTTP.
- `Prato.swift` — modelo de dados.
- `PratoRowView.swift` — apresentação de cada prato e ação de tradução.
- `AdicionarPratoView.swift` — formulário de cadastro.
- `EditarCardapioView.swift` — atualização de preço e exclusão.
- `Desafio_CardapioApp.swift` — ponto de entrada do app.
- `09 - [PDF] Swift - CRUD.pdf` — material de apoio.

## Configuração e execução

1. Importe e inicie no Node-RED um fluxo que implemente as quatro rotas acima e esteja conectado ao banco esperado.
2. No simulador, `127.0.0.1` refere-se ao Mac que executa o simulador.
3. Em um iPhone físico, altere `baseURL` em `CardapioViewModel.swift` para o IP local do computador que hospeda o Node-RED.
4. Confirme que o iPhone e o backend estão na mesma rede e ajuste App Transport Security para permitir HTTP local no ambiente de desenvolvimento.
5. Monte o projeto iOS no Xcode e adicione os arquivos Swift ao target.

Esta pasta contém fontes e material de apoio, mas não um projeto Xcode completo. As operações dependem dos endpoints e do fluxo Node-RED; a documentação do app não substitui a configuração do backend.
