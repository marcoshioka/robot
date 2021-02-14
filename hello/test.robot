*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Fernando
    Log To Console      ${result}
    Should Be Equal     ${result}   Olá Fernando, bem vindo ao curso básico de Robot Framework!

