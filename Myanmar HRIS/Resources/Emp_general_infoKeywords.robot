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

Click Family
    Click Element    ${family}

Employee Id
    Input Text    ${empid}    9988

Full Name
    Input Text    ${fullname}    Shah Newaj

Full Name Burmese
    Input Text    ${fullnamebur}    Shah Newaj

Date of Birth
    Input Text    ${dateofbirth}    24-Apr-1991

Place of Birth
    Input Text    ${placeofbirth}    Rajshahi

Preferred Name
    Input Text    ${pname}    Newaj

Blood Group
    Input Text    ${bloodgroup}     A+

Gender
    Input Text    ${gender}     Male

Religion
    Input Text    ${religion}     Islam

#Click on Save
#    Click Button    ${btn_save}