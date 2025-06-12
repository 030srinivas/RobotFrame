*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Select for radio button
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Page Should Contain Radio Button    Xpath://input[@class= 'radioButton']
        Select Radio Button    radioButton    radio2     
        Close Browser
        
Select Option From Dropdown
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//select[@id='dropdown-class-example']
    Select From List By Label    xpath=//select[@id='dropdown-class-example']    Option2
    Sleep    2s
    Close Browser
        
