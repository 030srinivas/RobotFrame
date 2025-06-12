*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://the-internet.herokuapp.com/nested_frames

*** Test Cases ***
Actions
    [Documentation]
    Open Browser        ${url}    ${browser}
    Maximize Browser Window


    Close Browser