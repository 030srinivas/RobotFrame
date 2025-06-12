*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.amazon.in/


*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Go To       https://www.google.com
        Sleep    4s
        Go Back
        Sleep    4s
        Reload Page
        Sleep    4s
        Close Browser