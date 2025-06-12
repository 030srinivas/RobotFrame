*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://the-internet.herokuapp.com/tables

*** Test Cases ***
Actions
    [Documentation]
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Table Cell Should Contain    //table[@id='table1']    5    1    Conway
    Table Cell Should Contain    //table[@id='table1']    2    2    John
    ${rows}=    Get WebElements    xpath=//table[@id='table1']/tbody/tr
    FOR    ${row}    IN    @{rows}
        ${text}=    Get Text    ${row}
        Log To Console    ${text}
    END
    Sleep    3s
    Close Browser