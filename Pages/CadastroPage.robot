*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${subheaderCadastroPage}                //*[@class='page-subheading' and text()='Your personal information']
${firstName_input}                      //*[@type='text' and @name='customer_firstname']
${lastName_input}                       //*[@type='text' and @name='customer_lastname']
${password_input}                       //*[@type='password' and @name='passwd']
${address_input}                        //*[@type='text' and @name='address1']
${city_input}                           //*[@type='text' and @name='city']
${zipcode_input}                        //*[@type='text' and @name='postcode']
${mobilhePhone_input}                   //*[@type='text' and @name='phone_mobile']
${submit_Button}                        //*[@type='submit' and @name='submitAccount']
${mensagemErroRequired}                 //*[@class='alert alert-danger']//*[contains(text(),'errors')]
${mensagemEmailCadastrado}              //*[text()='An account using this email address has already been registered. Please enter a valid password or request a new one. ']

*** Keywords ***
Input Title
    Wait Until Element Is Visible       ${subheaderCadastroPage}
    Element Should Be Visible           ${subheaderCadastroPage}   
    Select Radio Button                 id_gender       1
    Radio Button Should Be Set To       id_gender       1

Input First Name
    [Arguments]                         ${firstName}
    Wait Until Element Is Enabled       ${firstName_input}
    Click Element                       ${firstName_input}
    Input text                          ${firstName_input}          ${firstName}

Input Last Name
    [Arguments]                         ${lastName}
    Wait Until Element Is Enabled       ${lastName_input}
    Click Element                       ${lastName_input}
    Input text                          ${lastName_input}           ${lastName}

Input Password
    [Arguments]                         ${password}
    Wait Until Element Is Enabled       ${password_input}
    Click Element                       ${password_input}
    Input text                          ${password_input}           ${password}

Input Date of Birth
    Select From List By Value           days            24
    Select From List By Value           months          3
    Select From List By Value           years           1991

Input Address
    [Arguments]                         ${address}
    Wait Until Element Is Enabled       ${address_input}
    Click Element                       ${address_input}            
    Input text                          ${address_input}            ${address}

Input City
    [Arguments]                         ${city}
    Wait Until Element Is Enabled       ${city_input}
    Click Element                       ${city_input}        
    Input text                          ${city_input}               ${city}

Input State
    Select From List By Value           id_state        1

Input ZipCode
    [Arguments]                         ${zipcode}
    Wait Until Element Is Enabled       ${zipcode_input}
    Click Element                       ${zipcode_input}
    Input text                          ${zipcode_input}            ${zipcode}

Input Mobile Phone
    [Arguments]                         ${mobilhePhone}
    Wait Until Element Is Enabled       ${mobilhePhone_input}
    Click Element                       ${mobilhePhone_input}
    Input text                          ${mobilhePhone_input}       ${mobilhePhone}

Clicar Submit
    Wait Until Element Is Visible       ${submit_Button}
    Element Should Be Visible           ${submit_Button}
    Click Button                        ${submit_Button}

Validar Mensagem de Erro
    Wait Until Element Is Visible       ${mensagemErroRequired}
    Element Should Be Visible           ${mensagemErroRequired}

Validar Mensagem de Email Cadastrado
    Wait Until Element Is Visible       ${mensagemEmailCadastrado}
    Element Should Be Visible           ${mensagemEmailCadastrado}