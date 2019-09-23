*** Settings ***
Resource         Test_123_python.robot

*** Test Cases ***
The user can search for flights
    Open search page
    Select Departure   Paris
    Select Destination    London
    Search Flights
    Flights are found
    Close pages