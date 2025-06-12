*** Settings ***
Library     DataDriver      C:/Users/srirx/PycharmProjects/RoboFrame/TestData/studentcsv.csv       Sheet_name=studentcsv
Library     SeleniumLibrary
Resource        ../Resources/DDTlab.robot

Suite Setup     Launch App
Suite Teardown  Close App

Test Template   Student form

*** Test Cases ***

Register Student Test    ${Name}    ${Email}    ${Gender}    ${Mobile}    ${DateOfBirth}    ${Subject}    ${address}



*** Keywords ***
Student form
    [Arguments]     ${Name}    ${Email}    ${Gender}    ${Mobile}    ${DateOfBirth}    ${Subject}    ${address}
    Set Name                ${Name}
    Set Email               ${Email}
    Set Gender              ${Gender}
    Set Mobile              ${Mobile}
    Set DOB                 ${DateOfBirth}
    Set Subject             ${Subject}
    Set Current Address     ${address}
    Click Submit
    Sleep    2s

