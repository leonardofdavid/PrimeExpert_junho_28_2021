*** Settings ***
Documentation    arquivo responsavel pelas importacoes, variaveis e keywords
Library    SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com
${produto}    Blouse

*** Keywords ***
#    Suite Setup
Abrir o navegador
    Open Browser    browser=chrome

# Fechar o navegador
    # Close Browser


#    Acoes
Acessar a página home do site Automation Practice
    Go To    ${URL}

Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible    id:search_query_top
    Input Text    id:search_query_top    ${produto}

Clicar no botão pesquisar
    Click Button    name:submit_search

Conferir se o produto "${produto}" foi listado no site
    Wait Until Element Is Visible    //h5[@itemprop='name'][contains(.,'Blouse')]
    Element Text Should Be           //h5[@itemprop='name'][contains(.,'Blouse')]    ${produto}