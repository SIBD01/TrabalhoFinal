# C4 : Esquema Relacional  <!-- omit in toc -->


- [Relações](#relações)
  - [Cliente](#cliente)
  - [Reserva](#reserva)
  - [Info_Mesa](#info_mesa)
  - [Pedido](#pedido)
  - [Info_Pedido](#info_pedido)
  - [Empregado](#empregado)
  - [Info_Empregado](#info_empregado)
  - [Encomenda](#encomenda)
  - [LinhaEncomenda](#linhaencomenda)
  - [Produto](#produto)
  - [Fornecedor](#fornecedor)
  - [Empregado_Encomenda](#empregado_encomenda)
  - [Encomenda_Fornecedor](#encomenda_fornecedor)
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
| dia     | dia da reserva           | VARCHAR(50)        | now()       | Não        | Não  |
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
| nrPedido       |
| nrTelefone        |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| pedido | nrPedido      | Info_Pedido            | nrPedido                        | Não     |
| nr_cliente | nrTelefone      | Cliente            | nrTelefone                        | Não     |


### Info_Pedido

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre o pedido.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrPedido       | número do pedido | INT      | -           | Sim        | Não  |
| entrada     | a entrada escolhida           | VARCHAR(50)        | -       | Não        | Sim  |
| bebida     | a bebida escolhida           | VARCHAR(50)        | -       | Não        | Não  |
| prato    | o prato escolhido           | VARCHAR(50)        | -       | Não        | Não  |
| sobremesa     | a sobremesa escolhida           | VARCHAR(50)        | -       | Não        | Sim  |
| cafe     | o café escolhido           | INT        | -       | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrPedido       |


### Empregado

#### DESCRIÇÃO <!-- omit in toc -->

Tabela sobre o empregado.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrEmpregado       | número identificador do empregado | INT      | -           | Sim        | Não  |
| nrPedido     | número do pedido feito pelo cliente           | INT(9)        | -       | Não        | Não  |
| nrMesa     | número da mesa           | INT        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrEmpregado       |
| nrPedido        |
| nrMesa        |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| empregado | nrEmpregado      | Info_Pedido            | nrEmpregado                        | Não     |
| pedido | nrPedido      | Pedido            | nrPedido                        | Não     |
| mesa | nrMesa      | Reserva            | nrMesa                        | Não     |


### Info_Empregado

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre o empregado.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrEmpregado       | número identificador do empregado | INT      | -           | Sim        | Não  |
| função     | função do empregado           | VARCHAR(50)        | -       | Não        | Não  |
| nome     | nome do empregado           | VARCHAR(255)        | -       | Não        | Não  |
| nrCC     | número do cartão de cidadão do empregado           | INT(8)        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrEmpregado       |


### Encomenda

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre a encomenda.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrEncomenda       | número identificador da encomenda | INT      | -           | Sim        | Não  |
| data       | data da encomenda | VARCHAR(50)      | -           | Sim        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrEncomenda       |


### LinhaEncomenda

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre a encomenda.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| produtoCod       | código do produto | INT      | -           | Não        | Não  |
| encomendaQuantidade     | quantidade de produtos na encomenda           | INT        | -       | Não        | Não  |
| nrEncomenda     | número da encomenda           | INT        | -       | Sim        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| produtoCod       |
| nrEncomenda        |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| prod | produtoCod      | Produto            | produtoCod                        | Não     |
| encomenda | nrEncomenda      | Encomenda            | nrEncomenda                        | Não     |


### Produto

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre o produto.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| produtoCod       | código do produto | INT      | -           | Não        | Não  |
| produto     | tipo de produto           | VARCHAR(255)        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| produtoCod       |


### Fornecedor

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre o fornecedor.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| numero       | número identificador da empresa | INT      | -           | Não        | Não  |
| nomeEmpresa     | nome da empresa do fornecedor           | VARCHAR(255)        | -       | Não        | Não  |
| tipo     | tipo de fornecedor           | VARCHAR(255)        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| numero       |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| id_empresa | numero      | Empresa            | numero                        | Não     |


### Empregado_Encomenda

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre os produtos encomendados pelo empregado.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nrCC       | número do cartão de cidadão do empregado | INT(8)      | -           | Não        | Não  |
| produtoCod     | código do produto           | INT        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nrCC       |
| produtoCod        |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| identificação | nrCC      | Empregado            | nrCC                        | Não     |
| prod | produtoCod      | Encomenda            | produtoCod                        | Não     |


### Encomenda_Fornecedor

#### DESCRIÇÃO <!-- omit in toc -->

Tabela com informações sobre a encomenda realizada pelo fornecedor.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| produtoCod       | código do produto | INT      | -           | Não        | Não  |
| numero     | número identificador da empresa           | INT        | -       | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| produtoCod       |
| numero        |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| prod | produtoCod      | Encomenda            | produtoCod                        | Não     |
| id_empresa | numero      | Fornecedor            | numero                        | Não     |


## Vistas

```sql
CREATE VIEW InformacaoDaMesa AS
SELECT nrMesa, dia, hora, nrPessoas
FROM Info_Mesa
WHERE nrPessoas =< 4
```
Vista que permite ver a informação sobre uma mesa, num determinado dia a uma determinada hora e o número de pessoas é igual ou menos a 4.

```sql
CREATE VIEW PedidoDoCliente AS
SELECT nrPedido, entrada, bebida, prato, sobremesa, cafe
FROM Info_Pedido
```
Vista que permite saber o conteúdo do pedido efetuado pelo cliente.

```sql
CREATE VIEW MediaPessoasPorMesa AS
SELECT AVG(nrPessoas)
FROM Info_Mesa
```
Vista que permite ver a média do número de pessoas de todas as mesas do restaurante.

```sql
CREATE VIEW EmpregadoDeMesa AS
SELECT função, nrEmpregado, nome)
FROM Info_Empregado
WHERE função = 'Empregado de mesa'
```
Vista que permite ver a identificação dos empregados de mesa.

---
| [< Previous](rebd03.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal) | [Next >](rebd05.md) |
| :---------------------- | :------------------------------------------------------: | ------------------: |
