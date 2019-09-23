*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot
Test Teardown     Close Home Page

*** Test Cases ***
Valid Surfing
    [Tags]  Data Surfing
    Open Home Page
    Wait Until Page Contains    Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains    results for "Ferrari 458"
    Click Image  Thrustmaster Ferrari 458 Spider Racing Wheel for Xbox One
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    Cart subtotal
    Click Link  Proceed to checkout (1 item)
    Wait Until Page Contains  Sign-In
    sleep  3s


Search Flights
    [Tags]	    search_flights
    Open Flight Home Page
    Select Departure City   Paris
    Select Destination City    London
    Search For Flights
    There are available Flights

Valid Login
    [Tags]  Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
