*** Settings ***
Documentation    Essa suite testa o site da https://sorteio.com/
Resource         ../Sorteio_resources.robot
Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador
Library          SeleniumLibrary



*** Test Cases ***

Caso de teste 01 - Cadastro de usuario "Login" com e-mail
    [Documentation]    Esse teste Realiza o cadastro de um usuario no site Sorteios.com
    ...                E verifica se o retorno teve sucesso.
    [Tags]             Cadastro
    Acessar a home page do site "https://sorteio.com/"
    Entrar no menu "Login"
    Verificar se aparece a frase "Ainda não tenho cadastro"
    Informar o e-mail a ser cadastrado e clicar em registrar
    Informar o Usuario do instagram e o e-mail, após isso clicar em continuar
    Verificar se é exibido a frase "Selecione a publicação do seu sorteio"
    Selecionar o Post
    Clicar em "Continuar sem conectar"
    Verificar que não é possivel seguir sem realizar o pagamento.


Caso de teste 02 - Login de usuario Valido e troca de senha.
    [Documentation]    Esse teste Realiza o Login com um usuario no site Sorteios.com
    ...                E realizar a troca da sua senha.
    [Tags]             Login
    Acessar a home page do site "https://sorteio.com/"
    Entrar no menu "Login"
    Informar e-mail e senha
    Clicar em fazer Login
    Clicar em "alterar a senha"
    Prencher o campo senha nova e confirmar os mesmos.


Caso de teste 03 - Login de usuario invalido e troca de senha.
    [Documentation]    Esse teste realiza a tentativa de login com um usuario  invalido no site Sorteios.com
    [Tags]             Login
    Acessar a home page do site "https://sorteio.com/"
    Entrar no menu "Login"
    Informar e-mail e senha invalidas
    Clicar em fazer Login
    Login nao permitido

Caso de teste 04 - Envio de mensagem para o Suporte
    [Documentation]    Esse teste Realiza o envio de uma mensagem 
    ...                Para o time de suporte.
    [Tags]             Suporte
    Acessar a home page do site "https://sorteio.com/"
    Entrar no menu "Login"
    Selecionar a opção esqueci minha senha
    Informar o e-mail cadastrado e clicar em recuperar senha, email enviado com sucesso.
    



Caso de teste 05 - Envio de mensagem para o Suporte
    [Documentation]    Esse teste Realiza o envio de uma mensagem 
    ...                Para o time de suporte.
    [Tags]             Suporte
    Acessar a aba meu perfil
    Selecionar suporte
    Informar o texto e clicar em solicitar atendimento
    Metodos de contato exibidos com sucesso.



    