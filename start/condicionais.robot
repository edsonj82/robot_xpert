***Settings***
Documentation       Trabalhando com Condicionais

***Test Cases***
Carteira de Motorista
    ${idade}=       Set Variable        18

    IF      ${idade} >= 18
        Log To Console     Você tirar sua CNH
    ELSE
        Log To Console     Você pode andar de bicileta
    END

Navegador
    [tags]      browser
    ${browser}=     Set Variable        WebKit

    IF  '${browser}' == 'Firefox'
        Log To Console     Chamando o ${browser}
    ELSE IF  '${browser}' == 'Chrome'
        Log To Console     Chamando o ${browser}
    ELSE IF  '${browser}' == 'WebKit'
        Log To Console     Chamando o ${browser}
    ELSE
        FAIL      Navegador Incorreto
    END