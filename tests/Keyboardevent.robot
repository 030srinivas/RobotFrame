*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
Actions
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Press Key    xpath://input[@id='target']    SPACE
        Sleep    2S
        Press Key    xpath://input[@id='target']    ALT
        Sleep    2s
        Press Key    xpath//input[@id='target']    CONTROL
        Sleep    2s

        Close Browser