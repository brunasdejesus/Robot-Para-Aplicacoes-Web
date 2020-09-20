*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Close Browser

*** Variables ***
${check_thor}               id:thor
${check_ironman}            css:input[value='iron-man']
${check_blackpanter}        xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***

Marcando Opção Com ID
    [tags]          thor                           
    
    Go to                           ${url}/checkboxes
    Select checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    
Marcando Opção Com CSS Selector
    [tags]      ironman                            
    
    Go to                           ${url}/checkboxes
    Select checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
         
Marcando Opção Com XPath
    [tags]          black-panther                            
    
    Go to                           ${url}/checkboxes
    Select checkbox                 xpath://*[@id='checkboxes']/input[7]
    Checkbox Should Be Selected     xpath://*[@id='checkboxes']/input[7]
     

 