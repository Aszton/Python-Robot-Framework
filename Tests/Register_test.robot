*** Settings ***
Documentation    Register Test
Resource         ../Resources/Register_resources.robot
Resource         ../Resources/Main_page_resources.robot
Library          ../Helpers/Random.py

*** Test Cases ***
Correct Register New User
    ${random_string}=         Random.string
    ${random_phone}=          Random.phone

    Open Test Automation Store Page
    Click Login Or Register Button
    Click Continue Button To Register
    Fill Input First Name           ${random_string}
    Fill Input Last Name            ${random_string}
    Fill Input Email                ${random_string}@testmail.com
    Fill Input Phone Number         ${random_phone}
    Fill Input Address              ${random_string}
    Fill Input City                 ${random_string}
    Fill Input ZIP Code             ${random_string}
    Choose Region                   3513
    Fill Input Login Name           ${random_string}
    Fill Input Password             ${random_string}
    Fill Input Confirm Password     ${random_string}
    Click Checkbox Agree Privacy Policy
    Click Continue Button To Finish Register Process
    Check If Statment About Correct Register Is Displayed
    [Teardown]    close browser