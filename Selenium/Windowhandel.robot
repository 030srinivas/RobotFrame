*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://the-internet.herokuapp.com/windows

*** Test Cases ***
Actions
    [Documentation]
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Click Element    xpath://a[normalize-space()='Click Here']
    Switch Window   title:New Window
    Sleep    4s
    Element Text Should Be    xpath://h3[normalize-space()='New Window']    New Window
    Switch Window   title:The Internet
    Element Text Should Be    xpath://h3[normalize-space()='Opening a new window']    Opening a new window
    Sleep    4s
    Close Browser