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

- STOCK(tipoProduto, quantidade)

O stock é obtido através da disponibilidade e quantidade dos produtos contidos no restaurante.

- FORNECEDOR(tipo)

Cada fornecedor é identificado pelo seu tipo.

- ENCOMENDA(produtos)

A encomenda efetuada faz o re-stock aos produtos do restaurante.

### Associações:

- efetua (CLIENTE,RESERVA)

Cada cliente faz uma reserva.

- realiza (CLIENTE,PEDIDO)

Um cliente realiza um pedido.

- (EMPREGADO,ENCOMENDA)



- (EMPREGADO,RESERVA)



- (ENCOMENDA,FORNECEDOR)

Exemplo de inserção de uma imagem:   
![An alternative description](images/image02.png)   

Always add a description to help the user understand the figure 

NOTA: Cada entidade-tipo e cada associação devem ter um pequeno texto – um ou dois parágrafos – para descrever esse elemento do modelo e os seus atributos)

## Regras de negócio adicionais (Restrições)
_(Apresentar uma lista detalhada das regras e restrições não possíveis de representar no modelo E/A, que visam a manutenção da consistência e integridade da modelação do problema)_

---
[< Previous](rei02.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal/) | Next >
:--- | :---: | ---: 
