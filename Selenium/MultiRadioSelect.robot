*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Select for multiple radio button
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements}=     Get WebElements    Xpath://input[@class= 'radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s

        END
        Close Browser