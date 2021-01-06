#language: pt


Funcionalidade: Postagens dos usuários
    Para validar operações da API de postagens 
    Sendo um tester
    Posso verificar a resposta de cada endpoint

    # Cenario: Lista de postagens
    #     Quando submeto a requisicao de lista das postagens
    #     Entao vejo o status "200" da requisicao
    #     E a lista com as postagens de cada usuários

    Cenario: Listagem por id especifico
        Quando submeto a requisicao das postagens por id especifico
        Entao vejo o status "200" da requisicao
        E o corpo 

    # Cenario: Criando uma postagem
    #     Dado que eu insiros os dados
    #     Quando submeto a requisicao de criar uma nova postagem
    #     Entao vejo o status "201" da requisicao
    #     E o id "101"

    # Cenario: Aterando uma postagem
    #     Dado que eu altero os dados
    #     Quando submeto a requisicao de alteracao da postagem com id "88"
    #     Entao vejo o status "200" da requisicao
    #     E o id que foi alterado

    # Cenario: Deletando uma postagem
    #     Quando submeto a requisicao de delecao
    #     Entao vejo o status "200" da requisicao
