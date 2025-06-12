*** Settings ***

Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      chrome
${url}      https://the-internet.herokuapp.com/javascript_alerts


*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot     C:/Users/srirx/Downloads/robo1.png
        Sleep    2s
        Capture Element Screenshot    //button[@onclick='jsAlert()']    C:/Users/srirx/Downloads/robo2.png
        Close Browser