*** Settings ***
Resource  ../main.robot

*** Variables ***
&{login}
...  Input_Email_Login=//input[@placeholder="Email"]
...  Input_Senha_Login=//input[@placeholder="Password"]
...  Button_Logar=//span[contains(text(),"Login")]
...  A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]

*** Keywords ***
E faça o Login
    Wait Until Element Is Visible  ${login.A_OpcaoLogin}      10
    Click Element                  ${login.A_OpcaoLogin} 
    Wait Until Element Is Visible  ${login.Input_EmailLogin}  10
    Input Text                     ${login.Input_EmailLogin}  ${login.Email}
    Wait Until Element Is Visible  ${login.Input_SenhaLogin}  10
    Input Text                     ${login.Input_SenhaLogin}  ${login.Senha}
    Run Keyword And Ignore Error   Wait Until Element Is Visible  ${login.Button_Cookie}     5
    Run Keyword And Ignore Error   Click Element                  ${login.Button_Cookie}
    Wait Until Element Is Visible  ${login.Button_Logar}      10
    Click Element                  ${login.Button_Logar} 