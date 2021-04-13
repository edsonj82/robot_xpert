***Settings***
Documentation           Conhecendo os Dicionários do Robot (Nativo no Python)

***Variables***
# ${SIMPLES}      Edson
# @{CARROS}       chevette    opala   camaro  mustang
&{CARRO}        nome=chevette       hp=1500     portas=2        cor=marrom


**Test Cases***
Obtendo valores de um dicionário
    Log To Console      ${CARRO}
