*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.amazon.in/


*** Test Cases ***
Selecting the dropdown
        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://www.amazon.in/
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://a[normalize-space()='About Amazon']
        Scroll Element Into View    xpath://a[normalize-space()='About Amazon']
        Sleep    2s
        Click Element    xpath://a[normalize-space()='About Amazon']
        Sleep    4s
        Element Should Be Visible    xpath://div[@class='Page-header-bar']//span[1]//a[1]
        Close Browser
        
        

        Close Browser
