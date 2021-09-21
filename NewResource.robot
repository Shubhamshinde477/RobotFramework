*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://opensource-demo.orangehrmlive.com/
&{credentials}    username=Admin    password=admin123

*** Keywords ***
Login
    Input Text    id=txtUsername    ${credentials}[username]
    Input Text    id=txtPassword    &${credentials}[password]
    Sleep   10 seconds
    Click Button    id=btnLogin
