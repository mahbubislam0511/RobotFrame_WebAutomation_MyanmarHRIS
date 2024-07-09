*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/OfficeSetupKeywords.robot
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}      https://myanhris.scibd.info/Account/Login
${Browser}      Chrome
${username}     123456789
${password}     12345
${OfficeName}   RakhineAutomation
${OfficeNameBurmese}    RakhineAuto
${OfficeType}      Field Office
${OfficeAddress1}       Myanmar
${OfficeAddress2}       Myanmar2
${PostalCode}      MYN
${City}     NA
${Country}     Australia

*** Test Cases ***
Office Setup
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
    Click OfficeSetup
    Sleep    5s
    Click Add
    Sleep    3s
    Enter Office Name    ${OfficeName}
    Sleep    3s
    Enter Office Name Burmese    ${OfficeNameBurmese}
    Sleep    3s
    Enter Office Type   ${OfficeType}
    Sleep    3s
    Enter Office Address 1    ${OfficeAddress1}
    Sleep    3s
    Enter Office Address 2    ${OfficeAddress2}
    Sleep    3s
    Enter Postal Code    ${PostalCode}
    Sleep    3s
    Enter City    ${City}
    Sleep    3s
    Enter Country    ${Country}
    Sleep    3s
    Save Office Setup
    Sleep    3s
    Confirmation Feedback
    Sleep    5s
