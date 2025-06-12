*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demoqa.com/alerts

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Sleep    2s
        Click Element    Xpath://button[@id='alertButton']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4S
        Click Element    Xpath://button[@id='timerAlertButton']
        Sleep    6s

        Click Element    Xpath://button[@id='confirmButton']
        Sleep    2s
        Handle Alert        action=DISMISS       timeout=3
        Sleep    4S

        Click Element    Xpath://button[@id='promtButton']
        Sleep    2s
        Input Text Into Alert    hello
        Sleep    6s

        Close Browser
