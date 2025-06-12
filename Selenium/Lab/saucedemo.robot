*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.saucedemo.com/

*** Test Cases ***
verify login success with credentials
    [Documentation]
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    Xpath://input[@id='user-name']    timeout=5
    Input Text    Xpath://input[@id='user-name']    standard_user
    Input Text    Xpath://input[@id='password']    secret_sauce
    Click Element    Xpath://input[@id='login-button']
    Wait Until Element Is Visible    //div[@class='app_logo']      timeout=5
    Element Should Be Visible    //div[@class='app_logo']      timeout=5
    Close Browser