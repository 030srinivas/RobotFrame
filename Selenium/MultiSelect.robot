*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demoqa.com/select-menu

*** Test Cases ***
Selecting the dropdown
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select From List By Label    id=cars    Volvo
        Sleep    2s
        Unselect From List By Label    id=cars    Volvo
        Sleep    2s
        Select From List By Label    id:cars      Saab
        Sleep    2s
        Unselect From List By Label    id=cars    Saab
        Sleep    2s
        Select From List By Label    id:cars      Opel
        Sleep    2s
        Unselect From List By Label    id=cars    Opel
        Sleep    2s
        Select From List By Label    id:cars      Audi
        Sleep    2s
        Unselect From List By Label    id=cars    Audi
        Sleep    2s
        Close Browser