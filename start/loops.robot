***Settings***
Documentation           Laços de repetição (Loops)

***Variables***
@{AVENGERS}         Ironman     Hulk    Thor    Cap
@{JUSTICE}          Superman    Wonder Woman    Batman  Arrow

***Test Cases***
Meu primeiro Loops
    FOR     ${item}     IN      @{AVENGERS}
        IF      $item == 'Ironman'
            Log To Console  Obtendo o vingador: ${item}
        END  
    END

Novo Loops
    [tags]  busca
    FOR     ${item}     IN      @{AVENGERS}
        Exit For Loop IF    $item == 'Thor'
        Log To Console      Obtendo o vingador: ${item}
    END