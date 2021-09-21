*** Settings ***

Resource          Resource1/LoginResources.robot
Library           SeleniumLibrary
Library           OperatingSystem
Library           /home/swapnil/PycharmProjects/RobotFramework/Resource1/JsonActions.py
Library           JsonActions.JsonActions
Test Teardown     Close Browser

Suite Teardown       Close Browser

*** Variables ***


*** Test Cases ***
#firstFile.robot
#    Log To Console    This is my first working test case
#    Open Browser    ${url}    Chrome
#    Maximize Browser Window
#    Sleep    10 seconds
#    Close Browser
#
#SecondRobot
#    Log To Console    Starting Orange HRM website
#    Open Browser    ${url}    Chrome
#    Maximize Browser Window
#    Login
#    Sleep    10 seconds
#    Log To Console    Title Should Be    OrangeHRM
#    Close Browser
#
#ThirdRobot.robot
#    Log To Console    Started 3rd Test
#    Open Browser    ${url}    chrome
#    Login
#    Maximize Browser Window
#    Sleep    10 seconds
#    Close Browser
#    Log To Console    3rd test Ran successfully and Logs file saved successfully

JsonData.robot

        Log To Console    Testing Json robot Framework Demo

        Open Browser    ${url}    Chrome
        Maximize Browser Window
        Login using Json Credentials
        Sleep    3 seconds
        Log Title
        Close Browser


