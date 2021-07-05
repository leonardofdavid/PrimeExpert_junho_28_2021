*** Settings ***
Documentation    arquivo responsavel pelas variaveis, keywords e variaveis mobile
Library          AppiumLibrary

*** Variables ***
${remote_url}        http://local.host.4723/wd/hub
${platformName}      Android
${platformVersion}   9.0
${deviceName}        Pixel_4_API_30
${appPackage}        com.google.android.youtube
${appActivity}       com.google.android.apps.youtube.app.WatchWhileActivity
${automationName}    UiAutomator2

*** Test Cases ***


*** Keywords ***
#    Suite Setup
Abrir aplicativo no celular
    Open Application    ${remote_url}                platformName=${platform_name}    deviceName=${device_name}    appPackage=${app_package}  appActivity=${app_activity}

Buscar o canal “${nome_do_canal}”
    Host Until Element Is Visible
    Click Element    locator

Selecionar o canal na lista de busca

Navegar pelo menu Playlist

Selecionar a primeira playlist do canal

Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube