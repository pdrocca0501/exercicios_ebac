#language: pt

Funcionalidade: Configuração de produtos
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Feita seleção de cor, tamanho e quantidade obrigatórias 
Dado que eu selecione um produto
Quando eu não escolher cor
E tamanho
E quantidade  
Então não deve ser colocado no carrinho

Cenário: Não feito seleção de cor, tamanho e quantidade obrigatórias 
Dado que selecionar um produto
Quando eu escolher cor
E tamanho
E quantidade  
Então deve ser colocado no carrinho

Cenário: Seleção de mais que 10 produtos por venda
Dado que eu selecione 11 produtos para comprar
Quando tentado realizar a comprar
Então não deve ser deixado finalizar a compra

Cenário: Seleção de menos que 10 produtos por venda
Dado que eu selecione 10 produtos para comprar
Quando tentado realizar a comprar
Então deve ser deixado finalizar a compra

Cenário: Clicando no botão "Limpar"
Dado que eu queira limpar meu carrinho
Quando clico no botão "Limpar"
Então deve-se voltar ao estado original