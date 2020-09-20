*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Close Browser

*** Test Cases ***

Should See Page Title
    Title Should be     Training Wheels Protocol
    