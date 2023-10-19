#language: pt

Funcionalidade: Acesso na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação do EBAC Shop


Cenário: Dados válidos direciona para Checkout
Quando eu digitar o usuário "pedro@ebacshop.com.br"
E a senha "ebac@123"
Então deve exibir uma mensagem de boas vindas "Olá Pedro"
E permitir visualizar pedidos

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "pedro@ebacshop.com.br"
E a senha "senha@456"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
E não permitir acesso


