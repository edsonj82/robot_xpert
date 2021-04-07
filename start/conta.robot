***Settings***
Documentation       Suite para testar a classe ContaLibrary

Library             ContaLibrary.py

***Test Cases***
Quando abro uma nova conta deve retornar saldo ZERADO
    Abrir Conta

    ${saldo_final}      Obter saldo
    ${saldo_esperado}   Convert To Number  0.0

    Should Be Equal     ${saldo_final}      ${saldo_esperado}       

    # Log     ${saldo_final}

Quando faço um depósito deve refletir o valor no meu saldo
    Abrir Conta
    ${valor_deposito}   Convert To Number  100
    Deposita            ${valor_deposito}

    ${saldo_final}      Obter Saldo  

    Should Be Equal     ${saldo_final}      ${valor_deposito}
