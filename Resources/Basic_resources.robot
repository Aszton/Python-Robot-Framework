*** Settings ***
Library          SeleniumLibrary
Suite Setup      Slow Down

*** Variables ***
${URL}                  https://automationteststore.com/
${URL_LOGGED_USER}      https://automationteststore.com/index.php?rt=account/account
${BROWSER}              Firefox

*** Keywords ***
Slow Down
    set selenium speed    0.5