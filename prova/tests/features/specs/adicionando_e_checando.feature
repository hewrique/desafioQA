#language: pt

Funcionalidade: buscar produto adicionar e checar ao carrinho

-Eu como usuario
-Quero buscar um produto e coloca-lo ao carrinho

@add_check
Cenario: Realizar busca do produto, adicionar e checar o mesmo no carrinho

Quando eu pesquiso um produto
E verifico se a pesquisa foi feita com sucesso
E seleciono um produto entre os disponiveis
Quando clico em comprar
Então realizo a checagem para conferir se o produto está no carrinho

