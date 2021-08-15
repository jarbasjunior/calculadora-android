*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PO/Home.robot
Test Setup          Abrir app
Test Teardown       Close Application

*** Test Case ***
Caso de Teste: Realizar operação de soma com sucesso
    Home.Digitar dois números para soma "12" E "43"
    Home.Verificar resultado parcial "55"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "55"

Caso de Teste: Realizar operação de subtração com sucesso
    Home.Digitar dois números para subtração "29" E "12"
    Home.Verificar resultado parcial "17"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "17"

Caso de Teste: Realizar operação de multiplicação com sucesso
    Home.Digitar dois números para multiplicação "11" E "9"
    Home.Verificar resultado parcial "99"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "99"

Caso de Teste: Realizar operação de divisão com sucesso
    Home.Digitar dois números para divisão "17,50" E "2,50"
    Home.Verificar resultado parcial "7"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "7"
