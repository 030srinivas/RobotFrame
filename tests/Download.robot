*** Settings ***

Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/download


*** Test Cases ***
Selecting the dropdown
        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://the-internet.herokuapp.com/download
        Maximize Browser Window
        Click Element    //a[normalize-space()='sampleFile.jpeg']
        Sleep    2s
        ${file}=    List Files In Directory     C:/Users/srirx/Downloads
        List Should Contain Value   ${file}     sampleFile.jpeg
        Sleep    2s
        Close Browser
