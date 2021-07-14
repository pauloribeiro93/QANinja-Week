#language: pt
@smoke
Funcionalidade: Reproduzir Paródia
    Sendo um usuario cadastrado
    Quero reproduzir musica no player parodia
    
    Contexto: Login
        * Login com "pauloribeiro93@hotmail.com" e "741852"


    Cenário: Ouvir parodia

        Dado que eu gosto de muito de "Rock"
        Quando toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia deve ficar em modo de reprodução
