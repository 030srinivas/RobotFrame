*** Settings ***

Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/download


*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    //a[normalize-space()='sampleFile.jpeg']
        Sleep    2s
        ${file}=    List Files In Directory     C:/Users/srirx/Downloads
        List Should Contain Value   ${file}     sampleFile.jpeg
        Sleep    2s
        Close Browser