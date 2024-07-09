*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Click Configuration
    Click Element    ${click_Configuration}
Hover Employment
    Mouse Over    ${hover_Employment}
Click Department
    Click Element    ${click_DepartmentSetup}
Verify Page Title
    Title Should Be    Department Information
Click Add
    Click Element    ${click_Add2}
Enter Department Name
    [Arguments]   ${DepartmentName}
    Input Text    ${txt_DepartmentName}    ${DepartmentName}
Enter DepartmentName Burmese
    [Arguments]   ${DepartmentNameBurmese}
    Input Text    ${txt_DepartmentNameBurmese}    ${DepartmentNameBurmese}
Enter Status
    Click Element   ${click_InActive}
Save DepartmentInfo
    Click Button    ${btn_Save_DepartmentInfo}
Confirmation Feedback
    Click Button    ${btn_Confirmation_DepartmentInfo}