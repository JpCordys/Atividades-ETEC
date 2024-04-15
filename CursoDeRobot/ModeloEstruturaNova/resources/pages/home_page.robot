*** Settings ***
Resource  ../main.robot

*** Variables ***
&{home}
...  A_Signup=//a[@href="https://www.phptravels.net/signup"] 
...  a_voos=//a[contains(text(),"flights")] 
...  A_Visto=//a[@href="https://www.phptravels.net/visa"]

*** Keywords ***
Dado que eu acesse o php travels
    Open Browser  ${geral.URL}  ${geral.Browser}
    Maximize Browser Window

E fecho o navegador
    Close Browser

E acesso a página de visto
    Wait Until Element Is Visible  ${registro.ACCOUNT}  20
    Click Element                  ${registro.ACCOUNT}
    Wait Until Element Is Visible  ${registro.A_Visto}  20
    Click Element                  ${registro.A_Visto}