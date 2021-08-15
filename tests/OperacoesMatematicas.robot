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

