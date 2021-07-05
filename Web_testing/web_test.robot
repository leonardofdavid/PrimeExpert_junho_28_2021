*** Settings ***
Documentation    arquivo responsavel pelas importacoes, variaveis e keywords
Resource         resource_web.robot
Suite Setup      Abrir o navegador
# Suite Teardown   Fechar o navegador

*** Variables ***


*** Keywords ***



*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "${produto}" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "${produto}" foi listado no site
#http://automationpractice.com