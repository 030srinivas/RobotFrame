*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
#        ${labels}=      Get WebElement    id:dropdown-class-example
#        Log    ${labels}
        Select From List By Value    id:dropdown-class-example      option1
        Sleep    2s
        Select From List By Index    id:dropdown-class-example      2
        Sleep    2s
        Select From List By Label    id:dropdown-class-example      Option3
        Sleep    2s
        Close Browser

