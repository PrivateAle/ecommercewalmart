Feature: Site Ecommerce Walmart
  Step 1 Entrar no Site do Walmart
  Step 2 Procurar pelo termo "tv" na busca
  Step 3 Validar que a busca teve resultados
  Step 4 Clicar em um dos e validar que a página do produto abriu corretamente
  Step 5 Adicionar o Produto ao carrinho
  Step 6 Abrir o carrinho e validar que o mesmo foi adicionado com sucesso

  Scenario: Entrar no Site e relizar busca por Produto TV
    Given Eu entro no site do Walmart
    When  Entao eu digito "TV" na barra de "busca"
    And   Clico no botao "buscar"
    Then  Eu recebo o resultado da busca por produto

  Scenario: Validar resultados da busca e Visualizar um Produto TV selecionado
    Given Eu verifico se a busca me retornou algum resultado valido nao pode estar "vazia"
    When  Então Eu clico em um modelo de "TV" retornado pela busca
    Then  Eu visualizo a pagina com a informacoes do produto que cliquei

  Scenario: Adicionar um Produto e Validar Produto no Carrinho
    Given Eu clico no produto para adicionar ao meu "carrinho de compras"
    When  Eu clico no icone "carrinho de compras" para efetivar a transacao
    Then  Entao Eu visualizo a pagina do "carrinho de compras" e vejo que meu produto foi adicionado corretamente