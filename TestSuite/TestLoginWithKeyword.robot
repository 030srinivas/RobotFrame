*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Verify login functionality
        [Tags]      Sanity
        Log    user enter the username
        Log    user enter the password
        Log    user click on the login button
        Log    user is navigated to home page


*** Test Cases ***
Verify login functionality with keyword
    Login

*** Keywords ***
Login
        Log    user enter the username
        Log    user enter the password
        Log    user click on the login button
        Log    user is navigated to home page


