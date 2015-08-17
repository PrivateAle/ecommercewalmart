# language: pt

Funcionalidade: Testando cep com Api dos Correios

  Cenario: Validando CEP com API

    Dado que insira um cep valido para consulta
    Quando a requisicao de consulta for realizada
    Entao devo receber a mensagem de status e resultado da pesquisa


  Cenario: Validando CEP invalido com API

    Dado que insira um cep invalido para consulta
    Quando a requisicao de consulta invalida for realizada
    Entao devo receber a mensagem de status e resultado da pesquisa invalida