@Loja
Feature: Lojinha virtual


    Como um usuario novo na plataforma de vendas, desejo criar um cadastro
    A fim de posteriormente realizar o cadastro e edicao de novos produtos a minha loja virtual

    @create_user
    Scenario: Criar um usuario
    Given o endereco da API para manter o meu cadastro
    When realizar uma requisicao para cadastro
    Then a API ira retornar os dados do cadastro de usuario respondendo com o codigo 201

    @login
    Scenario: Realizar Login
    Given o endereco da API para manter o meu cadastro
    When realizar uma requisicao para logar
    Then a API ira retornar os dados de login juntamente ao token respondendo com o codigo 200

    @add_product
    Scenario: Adicionar Produto
    Given o endereco da API para manter o meu cadastro
    When realizar uma requisicao para cadastro de produtos
    Then a API ira retornar os dados do cadastro de produtos respondendo com o codigo 201

    @search_product
    Scenario: Buscar Produto
    Given o endereco da API para manter o meu cadastro
    When realizar uma requisicao para buscar um Produto
    Then a API ira retornar os dados do produto buscado respondendo com o codigo 200