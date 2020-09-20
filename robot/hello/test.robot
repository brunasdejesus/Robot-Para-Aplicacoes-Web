*** Settings ***
Library     app.py



*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=      Welcome     Bruna
    Should Be Equal     ${result}    Olá Bruna, bem vinda ao curso básico de Robot Framework!
    