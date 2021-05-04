# C3 : Esquema conceptual

## Modelo E/A

### Entidades:

- CLIENTE(nome,nrTelefone)

Cada cliente está identificado por nome (primeiro e último) e número de telefone.

- RESERVA(dia, hora, nrMesa, nrPessoas)

Cada reserva é identificado por dia, hora e número de pessoas.

- EMPREGADO(nome, numero, funcao)

Cada empregado é identificado por nome, número de funcionário e função (rececionista, chefe de sala, empregado de mesa, chef e assistente de cozinha).

- PEDIDO(entrada, bebida, prato, sobremesa, cafe)

Cada pedido é feito com base em entrada, bebida, prato, sobremesa e café.

- FORNECEDOR(tipo)

Cada fornecedor é identificado pelo seu tipo.

- ENCOMENDA(produtos)

A encomenda efetuada faz o re-stock aos produtos do restaurante.

### Associações:

- efetua (CLIENTE,RESERVA)

Cada cliente faz uma reserva.

- realiza (CLIENTE,PEDIDO)

Um cliente realiza um pedido.

- faz (EMPREGADO,ENCOMENDA)

Um empregado faz uma encomenda.

- atribuidoA (EMPREGADO,RESERVA)

Um empregado é atribuído a uma reserva.

- recebeUm (EMPREGADO, PEDIDO)

Um empregado recebe um pedido.

- entreguePor (ENCOMENDA,FORNECEDOR)

Uma encomenda é entregue por um fornecedor.

### Diagrama de Peter Chen (Modelo Entidade-relação):   
![An alternative description]

Always add a description to help the user understand the figure 

## Regras de negócio adicionais (Restrições)
_(Apresentar uma lista detalhada das regras e restrições não possíveis de representar no modelo E/A, que visam a manutenção da consistência e integridade da modelação do problema)_

---
[< Previous](rei02.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal/) | Next >
:--- | :---: | ---: 
