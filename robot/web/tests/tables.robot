*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Close Browser

*** Test Cases ***

Verifica O Valor Ao Informar O Numero Da Linha
    Go To       ${url}/tables
    Table Row Should Contain   id:actors   3   Senhor das Estrelas

Descobre A Linha Pelo Texto Chave E Valida Os Demais Valores
    Go To               ${url}/tables
    ${target}=          Get WebElement  xpath:.//tr[contains(., '@chadwickboseman')]
    Log                 ${target.text}
    Log To Console      ${target.text}
    Should Contain      ${target.text}      Chadwick Boseman 
    Should Contain      ${target.text}      Pantera Negra
    Should Contain       ${target.text}      Vingadores

