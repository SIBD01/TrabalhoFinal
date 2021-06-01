# C4 : Esquema Relacional  <!-- omit in toc -->
_(Apresentar o esquema físico da Base de Dados. Para cada relação resultante, apresente a descrição da tabela correspondente usando o exemplo apresentado.)_

- [Relações](#relações)
  - [Cliente](#cliente)
  - [Reserva](#reserva)
  - [Info_Mesa](#info_mesa)
  - [Pedido](#pedido)
- [Vistas](#vistas)

## Relações

### Cliente

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre o cliente.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrTelefone       | identificador da tabela Cliente | INT(9)      | -           | Não        | Não  |
| nome     | Nome do cliente           | VARCHAR(50)        | -       | Não        | Não  |
| email     | Email do cliente           | NVARCHAR(255) | -           | Não        | Não  |


#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrTelefone        |


### Reserva

#### DESCRIÇÃO <!-- omit in toc -->

Tabela sobre a reserva.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrMesa       | identificador da mesa no restaurante | INT      | -           | Não        | Não  |
| nrTelefone     | número de telefone do cliente           | INT(9)        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrMesa        |
| nrTelefone        |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| mesa | nrMesa      | Info_Mesa            | nrMesa                        | Não     |
| nr_cliente | nrTelefone      | Cliente            | nrTelefone                        | Não     |


### Info_Mesa

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre a mesa.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrMesa       | identificador da mesa no restaurante | INT      | -           | Não        | Não  |
| dia     | dia da reserva           | DATE        | now()       | Não        | Não  |
| hora     | hora da reserva           | TIME        | now()       | Não        | Não  |
| nrPessoas     | número de pessoas na mesa           | INT        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrMesa        |


### Pedido

#### DESCRIÇÃO <!-- omit in toc -->

Tabela acerca do pedido.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrPedido       | número do pedido | INT      | -           | Sim        | Não  |
| nrTelefone     | número de telefone do cliente           | INT(9)        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrMesa        |
| nrTelefone        |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| pedido | nrPedido      | Info_Pedido            | nrPedido                        | Não     |
| nr_cliente | nrTelefone      | Cliente            | nrTelefone                        | Não     |


## Vistas

_(Inserir a descrição e estrutura das vista, caso existam.)_

---
| [< Previous](rebd03.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal) | [Next >](rebd05.md) |
| :---------------------- | :------------------------------------------------------: | ------------------: |
