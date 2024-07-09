*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}      https://myanhris.scibd.info/Account/Login
${Browser}      Chrome
${username}     123456789
${password}     12345

*** Test Cases ***
Login Test
    Open My Browser   ${SiteUrl}    ${Browser}
    Enter Username    ${username}
    Sleep    3s
    Enter Password    ${password}
    Sleep    3s
    Click Signin
    Sleep    3s
    Verify Successful Login
    Close My Browser


