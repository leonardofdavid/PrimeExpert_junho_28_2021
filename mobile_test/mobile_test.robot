*** Settings ***
Documentation    arquivo responsavel pelos testes de mobile testing App: Youtube
Resource         ./resource_mobile.robot
Suite Setup      Abrir aplicativo no celular

*** Test Cases ***
 
Pesquisar canal Adrenaline
    Abrir o aplicativo no celular
    Buscar o canal “Adrenaline”
    Selecionar o canal na lista de busca
    Navegar pelo menu Playlist
    Selecionar a primeira playlist do canal
    Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube