*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${SiteUrl}  ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${txt_loginPassword}    ${password}

Click Employment
    Click Element    ${employment}

Click Emp_Generalinfo
    Click Element    ${empgeneralinfo}

