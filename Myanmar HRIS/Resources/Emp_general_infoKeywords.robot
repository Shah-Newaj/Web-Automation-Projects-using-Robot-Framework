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
#    Input Text    ${bloodgroup}    text
    Select From List By Label    ${bloodgroup}   O Positive


Gender
#    Input Text    ${gender}     Male
    Select From List By Label    ${gender}      Male

Religion
#    Input Text    ${religion}     Islam
    Select From List By Label    ${religion}    Islam

Passport
    Input Text    ${passport}    123456

Passport Expiry Date
    Input Text    ${passportexpirydate}    30-Apr-2024

NRC
    Input Text    ${nrc}    654321

Driving License
    Input Text    ${drivinglicense}    9876

Father's Name
    Input Text    ${fathername}    Test Father

Mother's Name
    Input Text    ${mothername}    Test Mother

Nationality
    Input Text    ${nationality}    Bangladesh

No of Children
    Input Text    ${children}    3

No of Dependant Children
    Input Text    ${depchildren}    2

No of Parents Alive
    Input Text    ${parentsalive}    1