# C3 : Normalização

## Relações
_(Apresentar as relações obtidas da transformação direta a partir do modelo EA)_

Cliente (<ins>nrTelefone<ins>, nome, email)
Reserva (dia, hora, <ins>nrMesa<ins>, nrPessoas, #nrTelefone -> Cliente)
Pedido (entrada, bebida, prato, sobremesa, cafe, <ins>nrPedido<ins>, <ins>#nrTelefone<ins> -> Cliente)
Empregado (função, <ins>nrEmpregado<ins>, nome, nrCC, <ins>#nrPedido<ins> -> Pedido, <ins>#nrMesa<ins> -> Reserva)
Encomenda (produto, <ins>produtoCod<ins>, encomendaQuantidade, <ins>nrEncomenda<ins>)
Fornecedor (<ins>numero<ins>, tipo, nomeEmpresa)
Empregado_Encomenda (<ins>#nrCC<ins> -> Empregado, <ins>#produtoCod<ins> -> Encomenda) 
Encomenda_Fornecedor (<ins>#produtoCod<ins> -> Encomenda, <ins>#numero<ins> -> Fornecedor)

  
  ## Normalização do Esquema Relacional
_(Apresentar o estudo da normalização das relações obtidas na secção anterior. Desnormalizar se necessário.)_

---
[< Previous](rebd02.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal) | [Next >](rebd04.md)
:--- | :---: | ---: 
