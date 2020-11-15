*** Settings ***
Resource          ../Resources.robot
Resource          ../Pages/HomePage.robot
Resource          ../Pages/CadastroPage.robot
Resource          ../Steps/CadastroStep.robot
Test Setup        Abrir Browser
Test Teardown     Close Browser

*** Variables ***
${emailBranco}
${emailValido}           testingemail@hotmail.com

# Cadastro em Branco
${firstNameBranco}
${lastNameBranco}
${passwordBranco}
${addressBranco}
${cityBranco}
${zipcodeBranco}
${mobilePhoneBranco}

# Cadastro INvalido
${firstNameInvalido}      ?!:@?#
${lastNameInvalido}       ?!:@?#
${passwordInvalido}       ?!:@?#
${addressInvalido}        ?!:@?#
${cityInvalido}           ?!:@?#
${zipcodeInvalido}        ?!:@?#
${mobilePhoneInvalido}    ?!:@?#

# Cadastro Valido
${firstNameValido}        Lucas
${lastNameValido}         Neves
${passwordValido}         PASSWORD
${addressValido}          First Street
${cityValido}             Green Bay
${zipcodeValido}          54666
${mobilePhoneValido}      999999999

*** Test Cases ***
Cadastro em Branco
    [Tags]    Smoke Test    CadastroBranco
    Estou na Home Page
    Inserir Email Cadastro  ${emailBranco}
    Mensagem de Erro exibida

Dados em Branco
    [Tags]    Smoke Test    DadosBranco
    [Template]  Cadastro
    #FirstName              #LastName           #Password           #Address            #CIty           #ZipCode            #Mobile Phone
    ${firstNameBranco}      ${lastNameBranco}   ${passwordBranco}   ${addressBranco}    ${cityBranco}   ${zipcodeBranco}    ${mobilePhoneBranco}

Dados Invalidos
    [Tags]    Smoke Test    DadosInvalidos
    [Template]  Cadastro
    #FirstName              #LastName               #Password               #Address                #City               #ZipCode                #Mobile Phone
    ${firstNameInvalido}    ${lastNameInvalido}     ${passwordInvalido}     ${addressInvalido}      ${cityInvalido}     ${zipcodeInvalido}      ${mobilePhoneInvalido}

Dados Validos
    [Tags]    Smoke Test    DadosValidos
    [Template]  Cadastro
    #FirstName              #LastName           #Password           #Address            #City           #ZipCode            #Mobile Phone
    ${firstNameValido}      ${lastNameValido}   ${passwordValido}   ${addressValido}    ${cityValido}   ${zipcodeValido}    ${mobilePhoneValido}

Email Existente
    [Tags]    Smoke Test    EmailExistente
    Estou na Home Page
    Inserir Email Cadastro  ${emailValido}
    Validar Mensagem de Email Cadastrado


*** Keywords ***
Cadastro
    [Arguments]             ${firstName}     ${lastName}     ${password}     ${address}       ${city}       ${zipcode}      ${mobilePhone}
    Estou na Home Page
    Inserir Email Cadastro  ${emailValido}
    Preencher Formulario    ${firstName}     ${lastName}     ${password}     ${address}       ${city}       ${zipcode}      ${mobilePhone}
    Validar Mensagem de Erro