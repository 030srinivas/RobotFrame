*** Settings ***
Resource    ../Resources/Resource.robot

*** Test Cases ***
Login
    Login
 
AddToCart
    AddToCart
    
*** Keywords ***
Login
    [SetUP]     Launch Browser
    [Teardown]      Close the browser
    Log To Console    user enter the username
    Log To Console    user enter the password
    Log To Console    user click on the login button
    Log To Console    user is navigated to home page
    
AddToCart
    [SetUP]     Launch Browser
    [Teardown]      Close the browser
    Log To Console    Adding the products to cart
    Log To Console    User enter the username
    Log To Console    User enter the Password
    Log To Console    User clicks on the login button
    Log To Console    User navigated to home page
    Log To Console    user adds the product to cart
    Log To Console    user Validates that the productr is added to cart
    
    
Launch Browser
    Log To Console    Launching the browser
Close the Browser
    Log To Console    Closing the browser