*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demoqa.com/upload-download
${path}     C://Users//srirx//Pictures//Screenshots//Screenshot 2025-05-30 165507.png

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Choose File    xpath://input[@id='uploadFile']    ${path}
        Sleep    3s
        Wait Until Element Is Visible    //div[@class='col-12 mt-4 col-md-6']
        ${text}=        Get Text    //div[@class='col-12 mt-4 col-md-6']
        Log To Console    ${text}
        Close Browser

