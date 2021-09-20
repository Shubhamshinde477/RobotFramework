*** Settings ***
Library           SeleniumLibrary
Library           JSONLibrary
Library           ../Resources/JsonActions.py
Library           JsonActions.jsonOperations


*** Variables ***
${url}=            https://opensource-demo.orangehrmlive.com/
&{credentials}    username=Admin    password=admin123
@{user}=           access_user      user
@{password}=       access_key    password


*** Keywords ***
Login
    Input Text    id:txtUsername    ${credentials}[Username]
    Input Password    id:txtPassword    ${password}[password]
    Sleep    10 seconds
    Click Button    id=btnLogin
    Sleep    10 seconds



