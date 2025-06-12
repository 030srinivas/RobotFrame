*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***
verify login success with credentials
    [Documentation]
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    Xpath://input[@id='firstname']    timeout=5
    Input Text    Xpath://input[@id='firstname']    Srinives
    Input Text    Xpath://input[@id='lastname']    R
    Input Text    Xpath://input[@id='username']    sri@gmail.com
    Input Text    Xpath://input[@id='password']    123456789

    Click Element    Xpath://input[@value='Register']
    Wait Until Element Is Visible    Xpath://input[@value='Register']      timeout=5
    Element Should Be Visible    Xpath://input[@value='Register']      timeout=5
    Close Browser
