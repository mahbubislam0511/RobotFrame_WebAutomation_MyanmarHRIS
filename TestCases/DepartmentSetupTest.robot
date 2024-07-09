*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/DepartmentSetupKeywords.robot

*** Variables ***
${SiteUrl}      https://myanhris.scibd.info/Account/Login
${Browser}      Chrome
${username}     123456789
${password}     12345
${DepartmentName}     Automation
${DepartmentNameBurmese}    Auto

*** Test Cases ***
Department Setup
    Open My Browser   ${SiteUrl}    ${Browser}
    Enter Username    ${username}
    Sleep    3s
    Enter Password    ${password}
    Sleep    3s
    Click Signin
    Sleep    5s
    Click Configuration
    Sleep    3s
    Hover Employment
    Sleep    3s
    Click Department
    Sleep    5s
    Click Add
    Sleep    3s
    Enter Department Name    ${DepartmentName}
    Sleep    3s
    Enter DepartmentName Burmese    ${DepartmentNameBurmese}
    Sleep    3s
    Enter Status
    Sleep    3s
    Save DepartmentInfo
    Sleep    3s
    Confirmation Feedback
    Sleep    3s
