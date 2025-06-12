*** Settings ***

Library     DataDriver      C:/Users/srirx/PycharmProjects/RoboFrame/TestData/ddtLogindataCSV.csv       Sheet_name=ddtLogindata
Library     SeleniumLibrary
Resource        ../Resources/DDTkeywords.robot

Suite Setup     Launch App
Suite Teardown      Close App
Test Template       Invalidlogin


*** Test Cases ***

Login with user ${username} and ${password}     Defailt UserData

*** Keywords ***
InvalidLogin
        [Arguments]     ${username}     ${password}
        Sleep    2s
        Set Email    ${username}
        Sleep    2s
        Set Password    ${password}
        Sleep    2s
        Click Login
        Sleep    2s
        Error Message should be visible
