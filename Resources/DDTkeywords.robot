*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F


*** Keywords ***
Launch App
    Open Browser        ${url}       ${browser}
    Maximize Browser Window



Close App
    Close Browser

Open Login Page
    Go To    ${url}

Set Email
    [Arguments]     ${email}
    Input Text    xpath://input[@id='Email']    ${email}

Set Password
    [Arguments]     ${password}
    Input Text      xpath://input[@id='Password']       ${password}

Click Login
    Click Element    //button[normalize-space()='Log in']

Error Message should be visible
    Element Text Should Be    //span[@id='Email-error']    Wrong email




