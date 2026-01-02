*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}     https://amazon.com.br
${menu_eletronicos}    //a[normalize-space()='Eletrônicos']
${nav_eletronicos}    //a[@aria-label='Eletrônicos']    
${texto_eletronicos}    Eletrônicos e Tecnologia    

*** Keywords ***
Abrir o navegador     Open Browser    browser=chrome 
                      Maximize Browser Window

Fechar o navegador    Capture Page Screenshot
                    Close Browser

 Acessar a homepage amazon.com.br     Go To     url=${url}
    Sleep    25s
    Wait Until Element Is Visible    locator=${menu_eletronicos}
  
Entrar no menu "Eletronicos"
    Click Element    locator=${menu_eletronicos}

Verificar se aparece a frase "Eletronicos"
    Wait Until Page Contains    text=${texto_eletronicos}
    Wait Until Element Is Visible    locator=${nav_eletronicos}

Verificar se aparece a categoria "Computadores e informática"
    Element Should Be Visible    locator=//span[@dir='auto'][normalize-space()='Computadores e Informática']

Digitar o nome do produto "Xbox Series S" na barra de pesquiisa
    Input Text    locator=//input[@id='twotabsearchtextbox']    text= "X Box"

Clicar no botão de pesquisa
    Click Button    locator=//input[@id='nav-search-submit-button']

 Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"
     Wait Until Element Is Visible    locator=//h2[@aria-label='Xbox Series S']

Esperar o elemento "Xbox" aparecer e clicar nele
    Wait Until Element Is Visible    locator=(//span[normalize-space()='Console Xbox Series X'])[1]
    Click Element    locator=(//span[normalize-space()='Console Xbox Series X'])[1]
    
Colocar "Xbox" no carrinho
    Click Button    locator=(//input[@id='add-to-cart-button'])[1]
