*** Settings ***
Library          SeleniumLibrary
Resource         Basic_resources.robot

*** Keywords ***

Click Continue Button To Register
    wait until element is visible       //button[@title='Continue']
    click element                       //button[@title='Continue']
    wait until page contains element    //span[normalize-space()='Create Account']

Fill Input First Name
    wait until element is enabled            //input[@name='firstname']
    [Arguments]                              ${first_name}
    Input Text    id:AccountFrm_firstname    ${first_name}

Fill Input Last Name
    wait until element is enabled            //input[@name='lastname']
    [Arguments]                                ${last_name}
    Input Text    //input[@name='lastname']    ${last_name}

Fill Input Email
    wait until element is enabled            //input[@name='email']
    [Arguments]                                ${last_name}
    Input Text    //input[@name='email']       ${last_name}

Fill Input Phone Number
    wait until element is enabled            //input[@name='telephone']
    [Arguments]                                 ${phone_number}
    Input Text    //input[@name='telephone']    ${phone_number}

Fill Input Address
    wait until element is enabled            //input[@name='address_1']
    [Arguments]                                 ${phone_number}
    Input Text    //input[@name='address_1']    ${phone_number}

Fill Input City
    wait until element is enabled            //input[@name='city']
    [Arguments]                              ${city}
    Input Text    //input[@name='city']      ${city}

Choose Region
    wait until element is enabled              //select[@name='zone_id']
    [Arguments]                                             ${region}
    Select From List By Value   //select[@name='zone_id']   ${region}

Fill Input Login Name
    wait until element is enabled              //input[@name='loginname']
    [Arguments]                                 ${login_name}
    Input Text    //input[@name='loginname']    ${login_name}

Fill Input ZIP Code
    wait until element is enabled              //input[@name='postcode']
    [Arguments]                                ${zip_code}
    Input Text    //input[@name='postcode']    ${zip_code}

Choose Country
    wait until element is enabled                               //select[@name='country_id']
    [Arguments]                                                 ${country}
    Select From List By Value    //select[@name='country_id']   ${country}

Fill Input Password
    wait until element is enabled                //input[@name='password']
    [Arguments]                                  ${password}
    Input Text    //input[@name='password']      ${password}

Fill Input Confirm Password
    wait until element is enabled                //input[@name='confirm']
    [Arguments]                                  ${password}
    Input Text    //input[@name='confirm']       ${password}

Click Checkbox Agree Privacy Policy
    wait until element is visible               //input[@name='agree']
    click element                               //input[@name='agree']

Click Continue Button To Finish Register Process
    wait until element is visible       //button[@title='Continue']
    click element                       //button[@title='Continue']

Check If Statment About Correct Register Is Displayed
    wait until element is enabled            //span[@class='maintext']
    Element Should Contain                   //span[@class='maintext']
    ...                                      YOUR ACCOUNT HAS BEEN CREATED!
