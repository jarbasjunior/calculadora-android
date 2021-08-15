*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PO/Home.robot
Test Setup          Abrir app

*** Test Case ***
Caso de Teste: Realizar operação de soma com sucesso
    Home.Digitar dois números para soma "3" E "4"
    Home.Verificar resultado parcial "7"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "7"

Caso de Teste: Realizar operação de subtração com sucesso
    Home.Digitar dois números para subtração "9" E "3"
    Home.Verificar resultado parcial "6"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "6"

Caso de Teste: Realizar operação de multiplicação com sucesso
    Home.Digitar dois números para multiplicação "7" E "5"
    Home.Verificar resultado parcial "35"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "35"

Caso de Teste: Realizar operação de divisão com sucesso
    Home.Digitar dois números para divisão "8" E "2"
    Home.Verificar resultado parcial "4"
    Home.Clicar no botão de resultado
    Home.Verificar resultado final "4"
