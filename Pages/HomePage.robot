*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${emailCreate_field}             //*[@type='text' and @id='email_create']
${emailLogin_field}              //*[@type='text' and @id='email']
${senhaLogin_field}              //*[@type='password' and @id='passwd']
${createAccount_button}          //*[@type='submit' and @id='SubmitCreate']
${signIn_button}                 //*[@type='submit' and @id='SubmitLogin']
${mensagemCampoBranco_field}     //*[@id='email_create' and @class='is_required validate account_input form-control']
${mensagemEmailBranco_field}     //*[@id='create_account_error']//li
${mensagemLoginErro_field}       //*[@class='alert alert-danger']//li

*** Keywords ***
Estou na Home Page
    Wait Until Element Is Visible     ${emailCreate_field}
    Element Should Be Visible         ${emailCreate_field}

Inserir Email Cadastro
    [Arguments]    ${email}
    Wait Until Element Is Enabled     ${emailCreate_field}
    Input Text                        ${emailCreate_field}    ${email}
    Click Button                      ${createAccount_button}

Mensagem de Erro exibida
    Wait Until Element Is Visible     ${mensagemCampoBranco_field}
    Element Should Be Visible         ${mensagemCampoBranco_field}   
    Wait Until Element Is Visible     ${mensagemEmailBranco_field}
    Element Should Be Visible         ${mensagemEmailBranco_field}

Inserir Email Login
    [Arguments]    ${email}
    Wait Until Element Is Enabled     ${emailLogin_field}
    Input Text                        ${emailLogin_field}    ${email}

Inserir Password Login
    [Arguments]    ${password}
    Wait Until Element Is Enabled     ${senhaLogin_field}
    Input Text                        ${senhaLogin_field}    ${password}

Clicar Sign In
    Wait Until Element Is Enabled     ${emailCreate_field}
    Click Button                      ${signIn_button}

Mensagem de Erro Login exibida
    Wait Until Element Is Visible     ${mensagemLoginErro_field}
    Element Should Be Visible         ${mensagemLoginErro_field}