*** Settings ***
Library    AppiumLibrary

*** Variables ***
${HOME_BTN_SOMAR}             id=op_add
${HOME_BTN_SUBTRAIR}          id=op_sub
${HOME_BTN_MULTIPLICAR}       id=op_mul
${HOME_BTN_DIVIDIR}           id=op_div
${HOME_BTN_IGUAL}             id=eq
${HOME_FIELD_RES_PARCIAL}     id=result_preview
${HOME_FIELD_RES_FINAL}       id=result_final

*** Keywords ***
#### Ações
Digitar dois números para soma "${PRIMEIRO_NUMERO}" e "${SEGUNDO_NUMERO}"
    Clicar no número "${PRIMEIRO_NUMERO}"
    Clicar no operador de soma
    Clicar no número "${SEGUNDO_NUMERO}"

Digitar dois números para subtração "${PRIMEIRO_NUMERO}" e "${SEGUNDO_NUMERO}"
    Clicar no número "${PRIMEIRO_NUMERO}"
    Clicar no operador de subtração
    Clicar no número "${SEGUNDO_NUMERO}"

Clicar no número "${NUMERO}"
    Click Element       xpath=//android.widget.Button[@text="${NUMERO}"]

Clicar no operador de soma
    Click Element       ${HOME_BTN_SOMAR}

Clicar no operador de subtração
    Click Element       ${HOME_BTN_SUBTRAIR}

Verificar resultado parcial "${RESULTADO}"
    ${RES_PARCIAL_ENCONTRADO}       Get Text        ${HOME_FIELD_RES_PARCIAL}
    Should Be Equal As Strings      ${RESULTADO}    ${RES_PARCIAL_ENCONTRADO}

Verificar resultado final "${RESULTADO}"
    Wait Until Page Contains Element    ${HOME_FIELD_RES_FINAL}
    ${RES_FINAL_ENCONTRADO}             Get Text                  ${HOME_FIELD_RES_FINAL}
    Should Be Equal As Strings          ${RESULTADO}              ${RES_FINAL_ENCONTRADO}

Clicar no botão de resultado
    Click Element       ${HOME_BTN_IGUAL}
