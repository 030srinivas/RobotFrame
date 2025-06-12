*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.amazon.in/

*** Test Cases ***
Actions
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        Mouse Over      xpath://span[normalize-space()='Prime']
        Sleep    2s
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2s
        Element Should Be Visible    //span[normalize-space()='Account & Lists']
        Sleep    2s

        Close Browser