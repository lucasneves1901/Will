*** Settings ***
Resource          ../Resources.robot
Resource          ../Pages/HomePage.robot
Resource          ../Pages/CadastroPage.robot
Resource          ../Pages/MyAccountPage.robot
Resource          ../Steps/CadastroStep.robot
Test Setup        Abrir Browser
Test Teardown     Close Browser

*** Variables ***
#Login em Branco
${emailLoginBranco}
${senhaLoginBranco}

#Login Invalido
${emailLoginInvalido}       !@:#?!#$
${senhaLoginInvalido}       !@

#Login Senha Invalida
${emailLoginValido}         testingemail@hotmail.com
${senhaLoginValido}         PASSWORD

*** Test Cases ***
Login Sucesso
    [Tags]    Smoke Test    LoginSucesso
    Estou na Home Page
    Inserir Email Login     ${emailLoginValido}
    Inserir Password Login  ${senhaLoginValido}
    Clicar Sign In
    Estou na MyAccount Page
    Desconectar Usuario

Login Invalido
    [Tags]    Smoke Test    LoginInvalido
    [Template]  Login
    #email                      #password           
    ${emailLoginInvalido}       ${senhaLoginInvalido}

Login Senha Invalida
    [Tags]    Smoke Test    LoginSenhaInvalida
    [Template]  Login
    #email                      #password  
    ${emailLoginValido}         ${senhaLoginInvalido}

Login em Branco
    [Tags]    Smoke Test    LoginBranco
    [Template]  Login
    #email                      #password  
    ${emailLoginBranco}         ${senhaLoginBranco}

*** Keywords ***
Login
    [Arguments]             ${email}     ${password}
    Estou na Home Page
    Inserir Email Login     ${email}
    Inserir Password Login  ${password}
    Clicar Sign In
    Validar Mensagem de ErroMensagem de Erro Login exibida