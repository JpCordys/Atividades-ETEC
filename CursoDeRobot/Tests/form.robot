*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${input_name}           //input[@id="name"]
${input_phone}          //input[@id="phone"]
${input_email}          //input[@id="email"]
${input_password}       //input[@id="password"]
${textarea_address}     //textarea[@id="address"]
${button_submit}        //button[@name="submit"]

*** Keywords ***
abrir navegador e acessar site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation      chrome

preencher campos
    Wait Until Element Is Enabled        ${input_name}    timeout=15
    Input Text      ${input_name}        Bianca
    Input Text      ${input_phone}       988774455
    Input Text      ${input_email}       abcdario@teste.com
    Input Text      ${input_password}    123456789Aa
    Input Text      ${textarea_address}  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

clicar em Submit
    Click Element   ${button_submit} 

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulario
    abrir navegador e acessar site
    preencher campos
    clicar em Submit
    fechar navegador