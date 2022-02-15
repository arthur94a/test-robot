*** Settings ***
Library                SeleniumLibrary

*** Variables ***
${BROWSER}             chrome
${URL}                 http://automationpractice.com/index.php

${CAMPO_PESQUISAR}     css=#search_query_top
${BOTAO_PESQUISAR}     css=.btn-default.button-search
${PESQUISA}            Blouse
${PESQUISA2}           produtoNaoExistente
${TITULO_PESQUISA}     xpath=.//*[@id='center_column']/h1/span[contains(text(), "${PESQUISA}")]
${NAO_ENCONTRADO}      xpath=.//*[@id='center_column']/p[contains(text(), "No results were found")]
${MENU}                xpath=.//*[@title='Women']
${SUBMENU}             xpath=.//*[@title='Summer Dresses']
${VALIDA_CATEGORIA}    xpath=.//*[@id='center_column']/h1/span[contains(text(), "Summer Dresses")]


*** Keywords ***
Abrir Site
    Open Browser       ${URL}  ${BROWSER}

Pesquisar Produto
    Click Element      ${CAMPO_PESQUISAR}
    Input Text         ${CAMPO_PESQUISAR}   ${PESQUISA}
    Click Element      ${BOTAO_PESQUISAR}
    Wait Until Element Is Visible   ${TITULO_PESQUISA}

Pesquisar Produto Inexistente
    Go to              ${URL}
    Click Element      ${CAMPO_PESQUISAR}
    Input Text         ${CAMPO_PESQUISAR}   ${PESQUISA2}
    Click Element      ${BOTAO_PESQUISAR}
    Wait Until Element Is Visible   ${NAO_ENCONTRADO}

Listar Produtos
    Go to              ${URL}
    Mouse Over         ${MENU}
    # wait up to 10s for element to become visible
    Set Selenium Implicit Wait  10
    Mouse Over         ${SUBMENU}
    Set Selenium Implicit Wait  10
    Click Element      ${SUBMENU}
    Wait Until Element Is Visible   ${VALIDA_CATEGORIA}
