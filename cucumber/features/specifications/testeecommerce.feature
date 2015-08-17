# language: pt

Funcionalidade: Site Ecommerce Walmart
  
  Cenario: Entrar no Site e relizar busca por Produto TV
    
    Dado Eu entro no site do Walmart
    Quando  Entao eu digito "TV" na barra de "busca"
    E   Clico no botao "buscar"
    Entao  Eu recebo o resultado da busca por produto

  Cenario: Validar resultados da busca e Visualizar um Produto TV selecionado
    Dado Eu verifico se a busca me retornou algum resultado valido nao pode estar "vazia"
    Quando  Então Eu clico em um modelo de "TV" retornado pela busca
    Entao  Eu visualizo a pagina com a informacoes do produto que cliquei

  Cenario: Adicionar um Produto e Validar Produto no Carrinho
    Dado Eu clico no produto para adicionar ao meu "carrinho de compras"
    Quando  Eu clico no icone "carrinho de compras" para efetivar a transacao
    Entao  Entao Eu visualizo a pagina do "carrinho de compras" e vejo que meu produto foi adicionado corretamente