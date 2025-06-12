*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
Selecting the checkboxes
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements}=     Get WebElements    Xpath://form[@id='checkboxes']//input[@type='checkbox']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s

        END
        Close Browser