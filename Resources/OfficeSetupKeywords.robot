*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
Click Configuration
    Click Element    ${click_Configuration}
Hover Employment
    Mouse Over    ${hover_Employment}
Click OfficeSetup
    Click Element   ${click_OfficeSetup}
Verify Page Title
    Title Should Be    Office Information
Click Add
    Click Element    ${click_Add}
Enter Office Name
    [Arguments]     ${OfficeName}
    Input Text    ${txt_OfficeName}    ${OfficeName}
Enter Office Name Burmese
    [Arguments]     ${OfficeNameBurmese}
    Input Text    ${txt_OfficeNameBurmese}    ${OfficeNameBurmese}
Enter Office Type
    [Arguments]     ${OfficeType}
    Click Element    ${click_OfficeType}
    ${options}    Get WebElements    ${OfficeType_List}
    FOR    ${OPTION}    IN    @{OPTIONS}
           ${text} =    Get Text    ${OPTION}
           IF    '${text}' == '${OfficeType}'
                       Click Element   ${OPTION}
                       BREAK
           END
    END
Enter Office Address 1
    [Arguments]     ${OfficeAddress1}
    Input Text    ${txt_OfficeAddress1}    ${OfficeAddress1}
Enter Office Address 2
    [Arguments]     ${OfficeAddress2}
    Input Text    ${txt_OfficeAddress2}    ${OfficeAddress2}
Enter Postal Code
    [Arguments]     ${PostalCode}
    Input Text    ${txt_PostalCode}    ${PostalCode}
Enter City
    [Arguments]     ${City}
    Click Element    ${click_City}
    Wait Until Page Contains Element    ${city_List}
    ${options}    Get WebElements    ${city_List}
    FOR    ${OPTION}    IN    @{OPTIONS}
           ${text} =    Get Text    ${OPTION}
           IF    '${text}' == '${City}'
                        Click Element   ${OPTION}
                        BREAK
           END
    END
Enter Country
    [Arguments]     ${Country}
    Click Element       ${click_Country}
    ${options}    Get WebElements    ${country_List}
    FOR    ${OPTION}    IN    @{OPTIONS}
           ${text} =    Get Text    ${OPTION}
           IF    '${text}' == '${Country}'
                        Click Element   ${OPTION}
                        BREAK
           END
    END
Save Office Setup
    Click Button    ${btn_Save}
Confirmation Feedback
    Click Button    ${btn_Confirmation}

