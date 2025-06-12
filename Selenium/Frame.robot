*** Settings ***

Library     SeleniumLibrary
Library    DateTime

*** Variables ***
${browser}      chrome
${url}      https://jqueryui.com/datepicker/

*** Test Cases ***
Actions
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select Frame    XPath://iframe[@class='demo-frame']
        Sleep    2s
        Current Frame Should Contain    Date
        Click Element    xpath://input[@id='datepicker']
        Sleep    2s
        Click Element    //a[normalize-space()='17']
        Sleep    2s



        Close Browser
