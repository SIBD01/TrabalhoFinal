# C5 : SQL

## DDL



```sql
USE `restaurante`;

CREATE TABLE IF NOT EXISTS `Cliente` (
  `nrTelefone` int(9) unsigned NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` nvarchar(255) NOT NULL,
  PRIMARY KEY (`nrTelefone`)
);

CREATE TABLE IF NOT EXISTS `Reserva` (
  `nrMesa` int unsigned NOT NULL,
  `nrTelefone` int(9) unsigned NOT NULL,
  PRIMARY KEY (`nrMesa`, `nrTelefone`)
);

CREATE TABLE IF NOT EXISTS `Info_Mesa` (
  `nrMesa` int unsigned NOT NULL,
  `dia` varchar(50) unsigned NOT NULL,
  `hora` time NOT NULL,
  `nrPessoas` int unsigned NOT NULL,
  PRIMARY KEY (`nrMesa`)
);

CREATE TABLE IF NOT EXISTS `Pedido` (
  `nrPedido` int unsigned NOT NULL AUTO_INCREMENT,
  `nrTelefone` int unsigned NOT NULL,
  PRIMARY KEY (`nrPedido`, `nrTelefone`)
);

CREATE TABLE IF NOT EXISTS `Info_Pedido` (
  `nrPedido` int unsigned NOT NULL AUTO_INCREMENT,
  `entrada` varchar(50) NULL,
  `bebida` varchar(50) NOT NULL,
  `prato` varchar(50) NOT NULL,
  `sobremesa` varchar(50) NULL,
  `cafe` int NULL,
  PRIMARY KEY (`nrPedido`)
);

CREATE TABLE IF NOT EXISTS `Empregado` (
  `nrEmpregado` int unsigned NOT NULL AUTO_INCREMENT,
  `nrPedido` int unsigned NOT NULL,
  `nrMesa` int unsigned NOT NULL,
  PRIMARY KEY (`nrEmpregado`, `nrPedido`, `nrMesa`)
);

CREATE TABLE IF NOT EXISTS `Info_Empregado` (
  `nrEmpregado` int unsigned NOT NULL AUTO_INCREMENT,
  `função` varchar(50) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nrCC` int(8) unsigned NOT NULL,
  PRIMARY KEY (`nrEmpregado`)
);

CREATE TABLE IF NOT EXISTS `Encomenda` (
  `nrEncomenda` int unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(50) unsigned NOT NULL,
  PRIMARY KEY (`nrEncomenda`)
);

CREATE TABLE IF NOT EXISTS `LinhaEncomenda` (
  `produtoCod` int unsigned NOT NULL,
  `encomendaQuantidade` int unsigned NOT NULL,
  `nrEncomenda` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`produtoCod`, `nrEncomenda`)
);

CREATE TABLE IF NOT EXISTS `Produto` (
  `produtoCod` int unsigned NOT NULL,
  `produto` varchar(255) NOT NULL,
  PRIMARY KEY (`produtoCod`)
);

CREATE TABLE IF NOT EXISTS `Fornecedor` (
  `numero` int(9) unsigned NOT NULL,
  `nomeEmpresa` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  PRIMARY KEY (`numero`)
);

CREATE TABLE IF NOT EXISTS `Empregado_Encomenda` (
  `nrCC` int(8) unsigned NOT NULL,
  `produtoCod` int unsigned NOT NULL,
  PRIMARY KEY (`nrCC`, `produtoCod`)
);

CREATE TABLE IF NOT EXISTS `Encomenda_Fornecedor` (
  `produtoCod` int unsigned NOT NULL,
  `numero` int(9) unsigned NOT NULL,
  PRIMARY KEY (`produtoCod`, `numero`)
);
```

## DML

```sql
INSERT INTO info_mesa VALUES (7, '10/06/2021', '20:30:00', 4)
```
Este exemplo de INSERT é referente a uma nova reserva efetuada pelo cliente, com identificação da mesa, o número de pessoas, dia e hora.

```sql
UPDATE Cliente SET nrTelefone = 912345678
```
Este exemplo de UPDATE atualiza o número de telefone do cliente.

```sql
INSERT INTO Reserva VALUES (4, 911232454)
DELETE FROM Reserva WHERE nrMesa = 4 AND nrTelefone = 911232454
```
Este exemplo de INSERT permite que seja inserida na base de dados uma nova reserva feita pelo cliente. Posteriormente, uma query que demonstra o cancelamento da mesma reserva.

```sql
INSERT INTO Info_Empregado VALUES (18, ‘Empregado de mesa’, ‘Joaquim Alberto’, 46516451)
UPDATE Info_Empregado SET função = ‘Chefe de Sala’
DELETE FROM Info_Empregado WHERE nrEmpregado = 18
```
Este exemplo de INSERT, UPDATE e DELETE é referente à entrada de um novo empregado do restaurante na base de dados, que posteriormente é atualizado e promovido de empregado de mesa para chefe de sala. Em caso de despedimento ou saída do restaurante, pode ser realizado o exemplo da função DELETE na base de dados para apagar todas as informações do empregado em específico.

---
[< Previous](rebd04.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal) | Next >
:--- | :---: | ---: 
