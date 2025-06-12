*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.amazon.in/

*** Test Cases ***
Actions
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Open Context Menu    css:.nav-a[href='/b/32702023031?node=32702023031&ld=AZINSOANavDesktop_T3&ref_=nav_cs_sell_T3']
        sleep       5s
        Double Click Element    xpath://a[normalize-space()="Today's Deals"]
        Sleep    5s


        Close Browser

        


