*** Settings ***
Documentation    Login Test
Resource         ../Resources/Login_resources.robot
Resource         ../Resources/Main_page_resources.robot
Library          ../Helpers/Random.py

*** Test Cases ***
Correct Login
    Open Test Automation Store Page
    Click Login Or Register Button
    Fill Input Login Name    test_user_wsb
    Fill Input Password      test_pass_wsb
    Click Login Button
    Check URL Correctly logged User
    [Teardown]    close browser

Incorrect Login
    ${random_string}=         Random.string
    Open Test Automation Store Page
    Click Login Or Register Button
    Fill Input Login Name     ${random_string}
    Fill Input Password       ${random_string}
    Click Login Button
    Check If Statment About Incorrect Login Is Displayed
    [Teardown]    close browser