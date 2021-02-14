*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variables ***
${check_thor}       id:thorteste
${check_iron}       css:input[value='iron-man-teste']
${check_panther}    xpath://*[@id='checkboxes']/input[7teste]

*** Test Cases ***
Marcando opção com ID
    [tags]      thor
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Marcando opção com CSS Selector   
    [tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}

Marcando opção com Xpath     
    [tags]      blackpanther
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
