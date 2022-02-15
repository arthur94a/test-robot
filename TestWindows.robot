*** Settings ***
Resource            ResourceWindows.robot

Test Setup        Carrega diretório de imagens
Test Teardown     Stop Remote Server

*** Test Cases ***
Windows Notepad Hello World
    Clica no menu Iniciar do Windows
    Abre o bloco de notas
    Digita "PWX Tecnologia"
    Checar texto digitado
    Fecha o bloco de notas