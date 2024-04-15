*** Settings ***
Resource       ../../resources/main.robot
Resource       ../../resources/shared/setup_teardown.robot
Test Setup     Acessar o site e logar
Test Teardown  Fechar navegador

*** Test Cases ***
TC03 - Solicitar visto Americano
    Dado que eu acesse o php travels
    E realize o cadastro 
    E faça o Login
    E acesso a página de visto
    E informo o pais de origem sendo o Brazil
    E fecho o navegador