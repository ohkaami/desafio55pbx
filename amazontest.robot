*** Settings ***
Documentation     Essa swtich testa  o site da amazon
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador   
Resource        amazonteste_resources.robot
*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletronicos"
    [Documentation]    Esse teste verifica o menu do site amazon
  ...                  E verifica a categoria computadores e eletronicos
    [Tags]    menus
    Acessar a homepage amazon.com.br
    Entrar no menu "Eletronicos"
    Verificar se aparece a frase "Eletronicos"
    Verificar se aparece a categoria "Computadores e informática"

Caso de teste 02 - Pesquisa de produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]    busca_produto
     Acessar a homepage amazon.com.br
     Digitar o nome do produto "Xbox Series S" na barra de pesquiisa
     Clicar no botão de pesquisa

Caso de teste 03 - Colocando no carrinho
    [Documentation]     Esse teste acrescenta o produto no carrinho
    [Tags]    carrinho
    Acessar a homepage amazon.com.br
     Digitar o nome do produto "Xbox Series S" na barra de pesquiisa
     Clicar no botão de pesquisa
     Esperar o elemento "Xbox" aparecer e clicar nele
     Colocar "Xbox" no carrinho