*** Settings ***
Library         SeleniumLibrary
Resource        ../Pages/CadastroPage.robot

*** Keywords ***
Preencher Formulario
    [Arguments]         ${firstName}     ${lastName}     ${password}     ${address}       ${city}       ${zipcode}      ${mobilePhone}
    Input Title
    Input First Name    ${firstName}
    Input Last Name     ${lastName}
    Input Password      ${password}
    Input Date of Birth
    Input Address       ${address}
    Input City          ${city}
    Input State
    Input ZipCode       ${zipcode}
    Input Mobile Phone  ${mobilePhone}
    Clicar Submit