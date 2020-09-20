*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Close Browser

*** Test Cases ***
Selecionando Por ID
    Go to                           ${url}/radios
    Select Radio Button             movies      cap
    Radio Button Should be Set To   movies      cap

Selecionando por Value
    Go to                           ${url}/radios
    Select Radio Button             movies      guardians
    Radio Button Should be Set To   movies      guardians
