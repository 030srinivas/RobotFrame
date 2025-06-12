*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://rahulshettyacademy.com/AutomationPractice/
        Maximize Browser Window
        Select From List By Value    id:dropdown-class-example      option1
        Sleep    2s
        Select From List By Index    id:dropdown-class-example      2
        Sleep    2s
        Select From List By Label    id:dropdown-class-example      Option3
        Sleep    2s
        Close Browser

