*** Settings ***
Library     SeleniumLibrary
Variables      ../variables.py



*** Variables ***
${name}     John
${city}     Bangalore
@{list1}        green       red     blue
&{dict}     username=Admin  password=admin123

*** Test Cases ***
Define variables
        Log     ${name}
        Log     ${city}
        Log    ${list1}
        Log    ${list1[0]}
        FOR    ${element}    IN    @{list1}
            Log    ${element}

        END

        Log    ${dict}[username]
        Log    ${dict}[password]

        
Set variable at Testcase level
        Set Test Variable    ${address}     ringroad
        Log    ${address}

Set Variables at gobal Level
    Log    ${username}
    Log    ${password}
