*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://the-internet.herokuapp.com/javascript_alerts
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
