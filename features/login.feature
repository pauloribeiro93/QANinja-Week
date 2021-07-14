#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenario: Login do Usuario

        Dado que eu acesso pagina Login
        Quando submeto minhas credencias com: "pauloribeiro93@hotmail.com" e "741852"
        Então devo ser redirecionado para a área logada


    Esquema do Cenario: Tentativa de login

        Dado que eu acesso pagina Login
        Quando submeto minhas credencias com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email               | senha       |
            | fernando@404.com.br | senhaabc123 |
            | fernando@404.com.br |             |
            |                     |             |