*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
abrir site do google
    Open Browser  https://www.google.com.br  chrome

abrir site da globo
    Open Browser  https://www.globo.com  chrome

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Teste de abrir e fechar site Google.
    [Tags]  regressivo
    abrir site do google
    fechar navegador

Cenário 2: Teste de abrir e fechar site da Globo.
    abrir site da globo
    fechar navegador
