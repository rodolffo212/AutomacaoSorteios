*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    Telnet


*** Variables ***
${AlterarSenha}    Xpath=//h4[text()='Senha']/following-sibling::button
${URL2}            https://sorteio.com/
${Problema}        Xpath=//h2[contains(.,'Por favor, descreva seu problema abaixo')]
${SUPORTE}         Xpath=//button[contains(.,'Suporte')]
${Invalid}         Xpath=//div[text()='Email ou senha invalida']
${ALERT}           Xpath=//*[@id="root"]/div[2]/div/form/div/div[2]

*** Keywords ***
#LOGIN KY
Abrir o Navegador
    Open Browser    browser=firefox    

Fechar o Navegador
    Capture Page Screenshot 
    Close Browser   


Acessar a home page do site "${URL}"
    Maximize Browser Window
    Go To  url=${URL}
    Wait Until Element Is Visible  locator=//img[contains(@class,'h-6')]

Entrar no menu "Login"  
    Click Element    locator=//*[@id="__next"]/div/nav/nav/div/div[3]/ul/li[5]/a

Verificar se aparece a frase "${Cadastro}"
    Click Button    locator=//button[contains(.,'${Cadastro}')]

 Informar o e-mail a ser cadastrado e clicar em registrar
    ${EMAILFAKE}                    FakerLibrary.Email
    Input Text      locator=email     text=${EMAILFAKE}
    Click Button                      locator=//button[@type='submit']
    Wait Until Element Is Visible     locator=//h2[@class='MuiTypography-root MuiTypography-h2 css-1npwck1']

Informar o Usuario do instagram e o e-mail, após isso clicar em continuar
    Input Text      locator=username  text=rodolffostret21
    ${EMAILFAKE}                      FakerLibrary.Email
    Input Text      locator=email     text=${EMAILFAKE}
    Click Button    locator=sendInformations

Verificar se é exibido a frase "${sorteio}"    
    Wait Until Element Is Visible    locator=//h2[contains(.,'${sorteio}')]

Selecionar o Post    
    Click Element    locator=(//div[@class='jss67']//div)[3]

Clicar em "${sem}"
    Click Button    locator=//button[text()='${sem}']

Verificar que não é possivel seguir sem realizar o pagamento.
    Wait Until Element Is Visible    locator=//strong[contains(.,'Ops! Limite Atingido.')]


Informar e-mail e senha
    Input Text       locator=//input[@type='text']                text=testerodolffo@gmail.com
    Input Password   locator=//input[contains(@type,'password')]  password=30130705Rr!


Informar e-mail e senha invalidas
    Input Text       locator=//input[@type='text']                text=testerodolffogmail.com
    Input Password   locator=//input[contains(@type,'password')]  password=3010705Rr!


Login nao permitido
  Page Should Contain     text=Bem vindo
     
Clicar em fazer Login    
    Click Button    locator=//button[contains(.,'Fazer login')]

Clicar em "alterar a senha"
    Wait Until Element Is Visible    locator=${AlterarSenha}
    Click Button                     locator=${AlterarSenha}

Prencher o campo senha nova e confirmar os mesmos.
    Input Text    locator=//input[@id='nova']           text=30140705Rr!
    Input Text    locator=//input[@id='confirmacao']    text=30140705Rr!
    Click Button  locator=//button[@type='submit']

Acessar a aba meu perfil
    Acessar a home page do site "${URL2}"
    Click Element    locator=//*[@id="__next"]/div/nav/nav/div/div[3]/ul/li[5]/a
    Input Text       locator=//input[@type='text']                text=testerodolffo@gmail.com
    Input Password   locator=//input[contains(@type,'password')]  password=30130705Rr!
    Click Button    locator=//button[contains(.,'Fazer login')]
Selecionar suporte
    Wait Until Element Is Visible    locator=${SUPORTE}	
    Click Element    locator=${SUPORTE}
    Element Should Be Visible    locator=${Problema}

Informar o texto e clicar em solicitar atendimento
    Input Text      locator=//input[contains(@type,'text')]    text=Teste rodolffo
    Click Button    locator=//button[@type='submit']

Metodos de contato exibidos com sucesso.
    Element Text Should Be    locator=//h2[contains(.,'Por favor, escolha uma forma de contato:')]    expected=Por favor, escolha uma forma de contato:

Selecionar a opção esqueci minha senha
    Click Element    locator=//button[contains(.,'Esqueci minha senha')]

Informar o e-mail cadastrado e clicar em recuperar senha, email enviado com sucesso.
    Input Text      locator=//input[@type='text']    text=testerodolffo@gmail.com
    Set Selenium Timeout    20
    Click Button    locator=//button[contains(.,'Recuperar senha')]


