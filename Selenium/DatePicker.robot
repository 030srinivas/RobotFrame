*** Settings ***

Library     SeleniumLibrary
Library    DateTime

*** Variables ***
${browser}      chrome
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
Actions
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element   xpath://input[@id='datetimepicker1']
        Wait Until Element Is Visible    xpath://select[@aria-label='Month']
        Select From List By Value    xpath://select[@aria-label='Month']    4
        Input Text    xpath://select[@aria-label='Year']    2024





        Close Browser
