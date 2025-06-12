*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php

*** Keywords ***
Launch App
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close App
    Close Browser

Set Name
    [Arguments]     ${name}
    Input Text      xpath://input[@id='name']    ${name}

Set Email
    [Arguments]     ${email}
    Input Text      xpath://input[@id='email']    ${email}

Set Gender
    [Arguments]     ${gender}
    IF    '${gender}' == 'Male'
        Click Element    xpath://input[@id='gender']
    ELSE IF    '${gender}' == 'Female'
        Click Element    xpath://div[3]//div[1]//div[1]//div[2]//input[1]
    ELSE
        Click Element    xpath://div[3]//div[1]//div[1]//div[3]//input[1]
    END


Set Mobile
    [Arguments]     ${number}
    Input Text      xpath://input[@id='mobile']    ${number}

Set DOB
    [Arguments]     ${date}
    Click Element    xpath://input[@id='dob']

    Press Keys       xpath://input[@id='dob']    ${date}


Set Subject
    [Arguments]     ${subject}
    Input Text      //input[@id='subjects']    ${subject}


Set Current Address
    [Arguments]     ${address}
    Input Text      xpath://textarea[@id='picture']    ${address}

Click Submit
    Sleep    1s
    Click Element    //input[@value='Login']

