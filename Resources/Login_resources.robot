*** Settings ***
Library          SeleniumLibrary
Resource         Basic_resources.robot

*** Keywords ***
Fill Input Login Name
    wait until element is enabled              id:loginFrm_loginname
    [Arguments]                                ${username}
    Input Text    id:loginFrm_loginname        ${username}

Fill Input Password
    wait until element is enabled              id:loginFrm_password
    [Arguments]                                ${password}
    Input Text    id:loginFrm_password         ${password}

Click Login Button
    wait until element is enabled             //button[@title='Login']
    click element                             //button[@title='Login']

Check URL Correctly logged User
    page should contain link                  ${URL_LOGGED_USER}

Check If Statment About Incorrect Login Is Displayed
    wait until element is enabled            //button[@data-dismiss='alert']
    Element Should Contain                   //div[@class='alert alert-error alert-danger']
    ...                                      Error: Incorrect login or password provided.