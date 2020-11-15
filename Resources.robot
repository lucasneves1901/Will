
*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${url}      http://automationpractice.com/index.php?controller=authentication&;back=my-account
${browser}        Chrome
${delay}          0

*** Keywords ***
Abrir Browser
  Open Browser    ${url}    ${browser}
  Maximize Browser Window
  Set Selenium Speed    ${delay}
  Validar Home Page

Validar Home Page
  Title Should Be    Login - My Store