*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Suite Setup     Open Home Page
Suite Teardown  Close Home Page
Library  SeleniumLibrary
Library  OperatingSystem



*** Variables ***
${BROWSER}  Chrome
${URL}  http://www.amazon.com



*** Test Cases ***
Valid Login
    [Documentation]  Basic info about the test
    [Tags]  Smoke
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
    Close Home Page




*** Keywords ***

Open Home Page
    Open Browser    ${URL}   ${BROWSER}

Close Home Page
    Close All Browsers

