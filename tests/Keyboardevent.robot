*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
Actions
        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://the-internet.herokuapp.com/key_presses
        Maximize Browser Window
        Press Key    xpath://input[@id='target']    SPACE
        Sleep    2S
        Press Key    xpath://input[@id='target']    ALT
        Sleep    2s
        Press Key    xpath//input[@id='target']    CONTROL
        Sleep    2s

        Close Browser
