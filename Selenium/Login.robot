*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
verify login success with credentials
    [Documentation]
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    Xpath://input[@placeholder='Username']     timeout=5
    Input Text    Xpath://input[@placeholder='Username']    Admin
    Input Text    Xpath://input[@placeholder='Password']    admin123
    Click Element    Xpath://button[normalize-space()='Login']
    Wait Until Element Is Visible    Xpath://div[@class='oxd-topbar-header-title']      timeout=5
    Element Should Be Visible    Xpath://div[@class='oxd-topbar-header-title']      timeout=5
    Close Browser
