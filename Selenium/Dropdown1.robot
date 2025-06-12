*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select From List By Index    id:dropdown      1
        Sleep    2s
        Select From List By Index    id:dropdown      2
        Sleep    2s
        Close Browser