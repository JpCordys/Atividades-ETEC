*** Settings ***
Resource  ../main.robot

*** Variables ***
&{Visto}
...  Input_OpcaoPaypal=//input[@name="payment_gateway"])[4]
...  Input_Termos=//input[@id="agreechb"]

*** Keywords ***
E informo o pais de origem sendo o ${Texto}
    Wait Until Element Is Visible  ${visto.Span_PaisOrigem}  10
    Click Element                  ${visto.Span_PaisOrigem}
    Wait Until Element Is Visible  ${visto.Input_InformaPaisOrigem}  10
    Input Text                     ${visto.Input_InformaPaisOrigem}  ${Texto}
    Press Keys                     ${visto.Input_InformaPaisOrigem}  ENTER