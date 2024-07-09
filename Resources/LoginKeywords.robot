*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]     ${SiteURL}      ${BrowserName}
    Open Browser    ${SiteURL}      ${BrowserName}
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text      ${txt_loginPassword}    ${password}

Click Signin
    Click Button    ${btn_signIn}

Verify Successful Login
    Title Should Be     DASHBOARD

Close My Browser
    Close Browser