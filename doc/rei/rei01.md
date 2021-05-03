# C1 : Introdução


## Descrição do trabalho

O trabalho consiste na especificação e desenvolvimento de um sistema de base de dados de todo um restautante, desde clientes, reservas, mesas, menu, pedidos, encomendas relativas a fornecedores, empregados e ainda stock de alimentos. As mesas do restaurante têm um número associado, tal como os empregados que, para além do número de identificação, apresentam o seu nome (primeiro e último) e ainda a sua função. Os clientes estão divididos em 2 tipos, clientes que fazem reserva e clientes informais. Enquanto os clientes que fazem reserva têm a opção de fazer o seu pedido previamente, no momento da reserva, os clientes informais terão de o fazer no preciso momento em que se sentam à mesa. Este clientes têm acesso ao menu, onde podem fazer o seu pedido, se não tiver sido feito previamente no momento da reserva, dependendo do stock disponível. Este stock pode ser reposto pelo restaurante através dos seus fornecedores, que são divididos por tipo e são, ainda, responsáveis pela entrega dos produtos alimentares necessários e requesitados pelo restaurante.



## Modelação do problema

- Um restaurante tem um número de mesas, identificadas também pelo seu devido número, que podem ser reservadas por clientes, onde cada
empregado pode estar associado a várias mesas.
- Cada empregado é identificado pelo nome, número de funcionário e função.
- Os clientes são determinados por nome, número de telefone, número de pessoas e tipo. Têm
acesso a um menu onde poderão escolher aquilo que quererão comer, através do seu pedido, dependendo do stock
disponível.
- Os fornecedores são responsáveis pela entrega dos alimentos e são divididos por tipo. 



---
[< Previous](rei00.md) | [^ Main](https://github.com/SIBD01/TrabalhoFinal) | [Next >](rei02.md)
:--- | :---: | ---: 
