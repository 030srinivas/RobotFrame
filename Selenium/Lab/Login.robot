*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.tutorialspoint.com/selenium/practice/login.php

*** Test Cases ***
verify login success with credentials
    [Documentation]
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    Xpath://input[@id='email']    timeout=5
    Input Text    Xpath://input[@id='email']    sri@gmail.com
    Input Text    Xpath://input[@id='password']    123456789
    Click Element    Xpath://input[@value='Login']
    Wait Until Element Is Visible    Xpath://input[@value='Login']      timeout=5
    Element Should Be Visible    Xpath://input[@value='Login']      timeout=5
    Close Browser