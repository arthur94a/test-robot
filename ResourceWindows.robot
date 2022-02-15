*** Settings ***
Documentation     Sikuli Library Demo

Library           SikuliLibrary

*** Variables ***
${IMAGE_DIR}                ${EXECDIR}\\img

*** Keywords ***
Carrega diretório de imagens
    Add Image Path          ${IMAGE_DIR}

Clica no menu Iniciar do Windows
    Click                   menu_iniciar.png
    Input Text              barra_de_pesquisa.PNG   bloco de notas

Abre o bloco de notas
   Press Special Key        ENTER

Digita "${TEXTO}"
    Input Text              area_texto.PNG    ${TEXTO}

Checar texto digitado
    Screen Should Contain    texto_pwx.PNG

Fecha o bloco de notas
    Click                   botao_fechar.PNG
    Click                   nao_salvar.png