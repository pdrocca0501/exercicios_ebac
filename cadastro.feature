            #language: pt

            Funcionalidade: Cadastro na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de Cadastro do EBAC Shop


            Cenário: Preenchimento de campos obrigatórios
            Quando eu não preencher campo de <campo> obrigatório
            Então deve exibir uma mensagem de crítica "Preencher campo obrigatório"
            E não permitir cadastro

            Exemplos:
            | campo   |
            | "email" |
            | "senha" |


            Cenário: Email em formato inválido
            Quando eu digitar email em formato inválido
            Então deve exibir uma mensagem de alerta "Email com formato inválido"
            E não permitir cadastro

            Cenário: Campos vazios
            Quando eu deixar campo de <campo> vazio 
            Então deve exibir uma mensagem de alerta "campo de" <campo> "está vazio"
            E não deve permirtir cadastro

            Exemplos:
            | campo   | 
            | "email" |
            | "senha" |
            | "nome"  |
            | "data de nascimento" |
