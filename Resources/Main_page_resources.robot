*** Settings ***
Library          SeleniumLibrary
Resource         Basic_resources.robot

*** Keywords ***

Open Test Automation Store Page
    open browser        ${URL}    ${BROWSER}
    maximize browser window
    title should be     A place to practice your automation skills!

Click Login Or Register Button
    wait until element is enabled       id:customernav
    click element                       id:customernav
    wait until page contains element    id:loginFrm_loginname