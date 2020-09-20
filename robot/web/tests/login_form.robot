*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Close Browser   

*** Test Cases ***

Login Com Sucesso
    Go To           ${url}/login
    Login With      stark   jarvis!
    Should See Logged User   Tony Stark

Senha Inválida
    [tags]              error
    Go To           ${url}/login
    Login With      stark       abc12345
    
    Should Contain Login Alert    Senha é invalida!

Usuário Inválido
    [tags]             User404
    Go To           ${url}/login
    Login With      bruna       12345
    
    Should Contain Login Alert     O usuário informado não está cadastrado!


*** Keywords ***

Login With
    [Arguments]     ${uname}   ${pass}

    Input Text      css:input[name=username]    ${uname} 
    Input Text      css:input[name=password]    ${pass}
    Click Element   class:btn-login

Should Contain Login Alert
    [Arguments]     ${expected_message}

    ${message}=     Get WebElement      id:flash
    Should Contain   ${message.text}     ${expected_message}

Should See Logged User
    [Arguments]     ${full_name}
    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!




