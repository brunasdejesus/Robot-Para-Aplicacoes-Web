*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Close Browser

*** Test Cases ***
Selecionar Pelo Texto E Validando Pelo Valor
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list      Tony Stark
    ${selected}=                    Get Selected List Value     class:avenger-list  
    Should Be Equal                 ${selected}                3

Selecionar Pelo Valor E Validando Pelo Texto
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown     2
    ${selected}=                    Get Selected List Label     id:dropdown 
    Should Be Equal                 ${selected}         Bucky  
