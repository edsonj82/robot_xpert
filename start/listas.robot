***Settings***

Documentation       Conhecendo as Listas
Library     Collections

***Variables***
@{AVENGERS}         Ironman     Hulk    Thor    Cap
@{JUSTICE}          Superman    Wonder Woman    Batman  Arrow


***Test Cases***
Alterando Minha Lista
    ${index}        Get Index From List     ${AVENGERS}     Ironman

    Set List Value  ${AVENGERS}     ${index}       Homem de Ferro
    Log To Console  ${AVENGERS}

Removendo Itens da Minha Lista
    [tags]  remove
    ${index}        Get Index From List     ${AVENGERS}     Ironman

    Set List Value          ${AVENGERS}     ${index}       Homem de Ferro
    
    ${index_remove}         Get Index From List     ${AVENGERS}     Thor
    Remove From List        ${AVENGERS}     ${index_remove}
    Log To Console          ${AVENGERS}

Alterando Minha Lista
    [tags]  combinacao
   ${crossover}      Combine Lists             ${AVENGERS}     ${JUSTICE}
   Log To Console       ${crossover} 