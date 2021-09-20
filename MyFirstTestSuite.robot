*** Settings ***

Resource            ../Resources/LoginResources.robot
Library           SeleniumLibrary
Library           OperatingSystem

Library          C:\\Users\\Shubham\\PycharmProjects\\RobotDemo1\\Resources\\JsonActions.py
Suite Teardown       Close Browser


*** Test Cases ***
firstFile.robot
    Log To Console    This is my first working test case
    Open Browser    ${url}    Chrome
    Maximize Browser Window
    Sleep    10 seconds
    Close Browser

SecondRobot
    Log To Console    Starting Orange HRM website
    Open Browser    ${url}    Chrome
    Maximize Browser Window
    Login
    Sleep    10 seconds
    Log To Console    Title Should Be    OrangeHRM
    Close Browser

ThirdRobot.robot
    Log To Console    Started 3rd Test
    Open Browser    ${url}    chrome
    Login
    Maximize Browser Window
    Sleep    10 seconds
    Close Browser
    Log To Console    3rd test Ran successfully and Logs file saved successfully

JsonData.robot
    FOR    ${username}    IN    @{user}
    FOR    ${password}    IN    @{password}
        Log To Console    Testing Json robot Framework Demo with different usernames and password
        Open Browser    ${url}    Chrome
        Maximize Browser Window
        Sleep    10 seconds
        Input Text    id=txtUsername    ${username}
        Input Text    id=txtPassword    ${password}
        Sleep    10 seconds
        Click Button    id=btnLogin
        Sleep    10 seconds
        Close Browser
    END
    END
