*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://jqueryui.com/tabs/

*** Test Cases ***
Actions
    [Documentation]
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Select Frame        xpath://iframe[@class='demo-frame']
    Click Element        css=#ui-id-1
    Sleep    2s
    Click Element        css=#ui-id-2
    Sleep    2s
    Click Element        css=#ui-id-3
    Sleep    2s

    Close Browser


