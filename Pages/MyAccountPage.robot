*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${myaccountPage}        //*[@class='page-heading' and text()='My account']
${signOut_Button}       //*[@class='logout' and @title='Log me out']

*** Keywords ***
Estou na MyAccount Page
    Wait Until Element Is Visible     ${myaccountPage}
    Element Should Be Visible         ${myaccountPage}

Desconectar Usuario
    Wait Until Element Is Enabled     ${signOut_Button}
    Click Element                      ${signOut_Button}