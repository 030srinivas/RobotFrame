*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/upload
${path}     C://Users//srirx//Pictures//Screenshots//Screenshot 2025-05-30 165507.png

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Choose File    xpath://input[@id='file-upload']    ${path}
        Sleep    3s
        Click Element    xpath://input[@id='file-submit']
        Sleep    2s
        Wait Until Element Is Visible    xpath://h3[normalize-space()='File Uploaded!']
        ${text}=        Get Text    xpath://h3[normalize-space()='File Uploaded!']
        Log To Console    ${text}
        Close Browser



        Close Browser