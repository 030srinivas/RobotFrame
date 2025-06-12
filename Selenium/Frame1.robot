*** Settings ***
Library     SeleniumLibrary
Library     DateTime

*** Variables ***
${browser}      chrome
${url}          https://the-internet.herokuapp.com/nested_frames

*** Test Cases ***
Actions
    [Documentation]
    Open Browser        ${url}    ${browser}
    Maximize Browser Window


    Select Frame        xpath=//frame[@name='frame-top']
    Select Frame        xpath=//frame[@name='frame-left']
    ${left}=            Get Text    xpath=//body
    Log To Console      LEFT FRAME TEXT: ${left}
    Unselect Frame
    Unselect Frame


    Select Frame        xpath=//frame[@name='frame-top']
    Select Frame        xpath=//frame[@name='frame-middle']
    ${middle}=          Get Text    xpath=//body
    Log To Console      MIDDLE FRAME TEXT: ${middle}
    Unselect Frame
    Unselect Frame


    Select Frame        xpath=//frame[@name='frame-top']
    Select Frame        xpath=//frame[@name='frame-right']
    ${right}=           Get Text    xpath=//body
    Log To Console      RIGHT FRAME TEXT: ${right}
    Unselect Frame
    Unselect Frame


    Select Frame        xpath=//frame[@name='frame-bottom']
    ${bottom}=          Get Text    xpath=//body
    Log To Console      BOTTOM FRAME TEXT: ${bottom}
    Unselect Frame

    Sleep    2s
    Close Browser
