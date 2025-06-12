*** Test Cases ***

Login
        Setup
        Log To Console    Execute Testcase1
        Log To Console    Logging the web page
        Teardown

AddToCart
        Setup
        Log To Console    Execute Testcase2
        Log To Console    Adding the product to cart
        Teardown

*** Keywords ***
Setup
        Log To Console    Launching the Browser

Teardown
        Log To Console    Closing the Browser
