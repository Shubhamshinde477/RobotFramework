*** Settings ***
Library           SeleniumLibrary

Library           /home/swapnil/PycharmProjects/RobotFramework/Resource1/JsonActions.py
Library           JsonActions.JsonActions



*** Variables ***
${url}=            https://opensource-demo.orangehrmlive.com/
&{credentials}    username=Admin    password=admin123



*** Keywords ***
Login
    Input Text    id:txtUsername    ${credentials}[username]
    Input Password    id:txtPassword    ${credentials}[password]
    Sleep    10 seconds
    Click Button    id=btnLogin
    Sleep    10 seconds

Login using Json Credentials
    @{user}     JsonActions.Access User
    @{password}     JsonActions.Access Password
    Input Text    id:txtUsername    ${user}[1]
    Input Password    id:txtPassword    ${password}[1]
    Sleep    3 seconds
    Click Button    id=btnLogin
    Sleep    3 seconds


