# Projeto 11 — HackaTruck GastroBar: gerenciamento de cardápio

Aplicativo SwiftUI para visualizar e administrar o cardápio de um restaurante fictício. A interface organiza pratos por categoria e utiliza API Node-RED para consultar, cadastrar, atualizar preço e excluir registros.

## Funcionalidades
- Lista pratos agrupados em Entrada, Principal, Sobremesa e Bebida.
- Exibe nome, preço e imagem.
- Formulário de cadastro com nome, preço, URL da imagem e categoria.
- Atualização do preço e exclusão de pratos.
- Ação de tradução do nome do prato pelo framework `Translation`.

## API Node-RED
Base URL no código: `http://127.0.0.1:1880`.

| Método | Endpoint | Operação |
|---|---|---|
| GET | `/cardapioGET` | Consulta |
| POST | `/cardapioPOST` | Cadastro |
| PUT | `/cardapioPUT` | Atualização de preço |
| DELETE | `/cardapioDELETE` | Exclusão |

O app usa `nome`, `preco`, `imagemUrl`, `categoria` e, para alterar ou excluir no Cloudant, `_id` e `_rev`.

## Arquivos
- `ContentView.swift`, `GastroBarView.swift`, `CardapioViewModel.swift`.
- `Prato.swift`, `PratoRowView.swift`.
- `AdicionarPratoView.swift`, `EditarCardapioView.swift`.
- `Desafio_CardapioApp.swift`.
- `13 - [PDF] IA - Translation.pdf` — material de apoio.

## Executar
Importe/inicie um fluxo Node-RED com as quatro rotas e banco esperado. No simulador, localhost refere-se ao Mac; em iPhone físico, use o IP local do host Node-RED. Verifique App Transport Security para HTTP. Monte o target iOS no Xcode. Esta pasta não contém projeto Xcode completo.