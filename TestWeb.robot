*** Settings ***
Resource            ResourceWeb.robot


*** Test Cases ***
1 - Acessar página home do site.
    Abrir Site

2 - Clicar em pesquisar
    Pesquisar Produto

3 - Produto Inexistente
    Pesquisar Produto Inexistente

4 - Verificar Hover
    Listar Produtos