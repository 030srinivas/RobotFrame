*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Sleep    2s
        Click Element    Xpath://button[normalize-space()='Click for JS Alert']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4S
        
        Click Element    Xpath://button[normalize-space()='Click for JS Confirm']
        Sleep    2s
        Handle Alert        action=DISMISS       timeout=3
        Sleep    4S

        Click Element    Xpath://button[normalize-space()='Click for JS Prompt']
        Sleep    2s
        Input Text Into Alert    hello
        Sleep    6s


        Close Browser