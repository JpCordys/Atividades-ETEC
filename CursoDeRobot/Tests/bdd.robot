*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#Dados do Teste
${NomeDaMusica}  4 Am Derivakat

#Var de Configuração
${URL}      https://www.youtube.com
${Browser}  chrome

#Elementos
${imput_pesquisa}   //input[@id="search"]
${button_pesquisa}  //button[@id="search-icon-legacy"]
${primeiro}         (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}            //yt-formatted-string[contais(text(),"Compartilhar")]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser                     ${URL}  ${Browser}

Quando digito o nome da musica
    Input Text                       ${imput_pesquisa}  ${NomeDaMusica}

E clico no botao buscar
    Click Element                    ${button_pesquisa}

E clico na primeira opcao da lista
    Wait Until Element Is Visible    ${primeiro}  timeout=15s
    Click Element                    ${primeiro}

Então o video eh executado
    Wait Until Element Is Visible    ${Prova}  timeout=15s
    Element Should Be Visible        ${Prova}
    Sleep    15
    Close Browser

*** Test Cases ***
Cenário 1: Executar vídeo no site do YouTube.
    Dado que eu acesso o site do youtube
    Quando digito o nome da musica
    E clico no botao buscar
    E clico na primeira opcao da lista
    Então o video eh executado