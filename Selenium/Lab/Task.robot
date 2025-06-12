*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://omayo.blogspot.com/
${path}     C://Users//srirx//Pictures//Screenshots//Screenshot 2025-05-30 165507.png


*** Test Cases ***
Multiselect Optio
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select From List By Label    id:multiselect1    Volvo
        Sleep    1s
        Unselect From List By Label    id:multiselect1    Volvo
        Sleep    1s
        Select From List By Label    id:multiselect1      Swift
        Sleep    1s
        Unselect From List By Label    id:multiselect1    Swift
        Sleep    1s
        Select From List By Label    id:multiselect1     Hyundai
        Sleep    1s
        Unselect From List By Label    id:multiselect1    Hyundai
        Sleep    1s
        Select From List By Label    id:multiselect1      Audi
        Sleep    1s
        Unselect From List By Label    id:multiselect1    Audi
        Sleep    1s


Dropdown option
        Select From List By Index    Xpath://select[@id='drop1']      1
        Sleep    2s
        Select From List By Index    Xpath://select[@id='drop1']      2
        Sleep    2s
        Select From List By Index    Xpath://select[@id='drop1']      3
        Sleep    2s
        Select From List By Index    Xpath://select[@id='drop1']      4
        Sleep    2s

Check link
        Click Element    xpath://div[@id='HTML27']//a[@id='link2']
        Sleep    2
        Page Should Contain Element    xpath://a[normalize-space()="'Public' Access specifier"]
        Go Back
        Sleep    2


Text Area Field
        Click Element       xpath://textarea[@id='ta1']
        Sleep               2s
        Input Text          xpath://textarea[@id='ta1']    hello
        Sleep               6s


Text Area Field two
        Click Element    Xpath://textarea[normalize-space()='The cat was playing in the garden.']
        Sleep    2s
        Clear Element Text    xpath://textarea[normalize-space()='The cat was playing in the garden.']
        Sleep    1s


Login page
        Wait Until Element Is Visible    Xpath://input[@name='userid']     timeout=5
        Input Text    Xpath://input[@name='userid']    Admin
        Input Text    Xpath://input[@name='pswrd']    admin123
        Click Element    Xpath://input[@value='Login']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3

Upload file
        Choose File    xpath://input[@id='uploadfile']    ${path}
        Sleep    3s
        Wait Until Element Is Visible    //input[@id='uploadfile']
        ${text}=        Get Text    //input[@id='uploadfile']
        Log To Console    ${text}

Alerts
        Click Element    Xpath://input[@id='timerButton']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4S


Search blog
        Wait Until Element Is Visible    Xpath://input[@name='q']     timeout=5
        Input Text    Xpath://input[@name='q']    Volvo
        Click Element       //input[@value='Search']

Radio Option
        Page Should Contain Radio Button  xpath://input[@id='radio1']
        Select Radio Button  gender  male
        Sleep    2s

Alerts
        Click Element    Xpath://input[@id='alert1']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4S


check box
        ${elements}=     Get WebElements    Xpath:(//input[@id='checkbox1'])
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s

        END

        Close Browser
