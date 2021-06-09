# C3 : Normalização

## Relações

Cliente (<ins>nrTelefone</ins>, nome, email)

Reserva (dia, hora, <ins>nrMesa</ins>, nrPessoas, #nrTelefone -> Cliente)

Pedido (entrada, bebida, prato, sobremesa, cafe, <ins>nrPedido</ins>, <ins>#nrTelefone</ins> -> Cliente)

Empregado (função, nrEmpregado, nome, <ins>nrCC</ins>, <ins>#nrPedido</ins> -> Pedido, <ins>#nrMesa</ins> -> Reserva)

Encomenda (produto, <ins>produtoCod</ins>, encomendaQuantidade, <ins>nrEncomenda</ins>, data)

Fornecedor (<ins>numero</ins>, tipo, nomeEmpresa)

Empregado_Encomenda (<ins>#nrCC</ins> -> Empregado, <ins>#produtoCod</ins> -> Encomenda) 

Encomenda_Fornecedor (<ins>#produtoCod</ins> -> Encomenda, <ins>#numero</ins> -> Fornecedor)

  
  ## Normalização do Esquema Relacional
  
### Pedido (entrada, bebida, prato, sobremesa, cafe, <ins>nrPedido</ins>, <ins>#nrTelefone</ins> -> Cliente)
  DF1: nrPedido -> entrada, bebida, prato, sobremesa, café
  
  1NF
  
  Pedido (entrada, bebida, prato, sobremesa, cafe, <ins>nrPedido</ins>, <ins>#nrTelefone</ins> -> Cliente)
  
  Chaves Candidatas: (nrPedido, nrTelefone)
  
  2NF
  
  Pedido (<ins>#nrPedido</ins> -> Info_Pedido, <ins>#nrTelefone</ins> -> Cliente)
  
  Chaves Candidatas: (nrPedido, nrTelefone)
  
  Info_Pedido (<ins>nrPedido</ins>, entrada, bebida, prato, sobremesa, café)
  
  Chaves Candidatas: (nrPedido)
  
  Já se encontra na 3NF e BCNF.
  
  
  
### Empregado (função, <ins>nrEmpregado</ins>, nome, nrCC, <ins>#nrPedido</ins> -> Pedido, <ins>#nrMesa</ins> -> Reserva)
  DF1: nrEmpregado -> função, nome, nrCC
  
  1NF
  
  Empregado (função, <ins>nrEmpregado</ins>, nome, nrCC, <ins>#nrPedido</ins> -> Pedido, <ins>#nrMesa</ins> -> Reserva)
  
  Chaves Candidatas: (nrEmpregado, nrPedido, nrMesa)
  
  2NF
  
  Empregado (<ins>#nrEmpregado</ins> - > Info_Empregado, <ins>#nrPedido</ins> -> Pedido, <ins>#nrMesa</ins> -> Reserva)
  
  Chaves Candidatas: (nrEmpregado, nrPedido, nrMesa)
  
  Info_Empregado (<ins>nrEmpregado</ins>, função, nome, nrCC)
  
  Chaves Candidatas: (nrEmpregado)
  
  Já se encontra na 3NF e BCNF.
  
  
  
### Reserva (dia, hora, <ins>nrMesa</ins>, nrPessoas, #nrTelefone -> Cliente)
  DF1: nrMesa -> dia, hora, nrPessoas
  
  1NF
  
  Reserva (dia, hora, <ins>nrMesa</ins>, nrPessoas, <ins>#nrTelefone</ins> -> Cliente)
  
  Chaves Candidatas: (nrMesa, nrTelefone)
  
  2NF
  
  Reserva (<ins>#nrMesa</ins> -> Info_Mesa, #nrTelefone -> Cliente)
  
  Chaves Candidatas: (nrMesa, nrTelefone)
  
  Info_Mesa (<ins>nrMesa</ins>, dia, hora, nrPessoas)
  
  Chaves Candidatas: (nrMesa)
  
  Já se encontra na 3NF e BCNF.
  
  
  
### Encomenda (produto, <ins>produtoCod</ins>, encomendaQuantidade, nrEncomenda, data)
  DF1: produtoCod -> produto
  
  DF2: nrEncomenda produtoCod -> encomendaQuantidade
  
  1NF
  
  Encomenda (produto, <ins>produtoCod</ins>, encomendaQuantidade, <ins>nrEncomenda</ins>, data)
  
  Chaves Candidatas: (produtoCod)
  
  2NF
  
  Encomenda (<ins>nrEncomenda</ins>, data)
  
  Chaves Candidatas: (nrEncomenda)
  
  LinhaEncomenda (<ins>#produtoCod</ins> -> Produto, encomendaQuantidade, <ins>#nrEncomenda</ins> -> Encomenda)
  
  Chaves Candidatas: (produtoCod, nrEncomenda)
  
  Produto (<ins>produtoCod</ins>, produto)
  
  Chaves Candidatas: (produtoCod)
  
  Já se encontra na 3NF e BCNF.
  
  
  
### Fornecedor (<ins>numero</ins>, tipo, nomeEmpresa)

  DF1: numero -> nomeEmpresa tipo

  Já se encontra normalizado.
  
  ---
[< Previous](rebd02.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal) | [Next >](rebd04.md)
:--- | :---: | ---: 
  
