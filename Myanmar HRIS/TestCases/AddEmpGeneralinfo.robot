*** Settings ***
Library    SeleniumLibrary
Library    Process
Resource    ../Resources/Emp_general_infoKeywords.robot

*** Variables ***
${SiteUrl}      https://myanhris.scibd.info/View/EmpInfo/EmpInfo
${Browser}      Chrome
${username}     123456789
${password}     12345


*** Test Cases ***
Add Employee General Info
    Open my browser    ${SiteUrl}  ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Button    ${btn_signIn}
    Sleep    5 Seconds
    Employee Id
    Full Name
    Full Name Burmese
    Date of Birth
    Place of Birth
    Preferred Name
#    Blood Group
#    Gender
#    Religion
    Passport
    Passport Expiry Date
    NRC
    Driving License
    Father's Name
    Mother's Name
    Nationality
    No of Children
    No of Dependant Children
    No of Parents Alive
    Sleep    5 Seconds
    Click Button    ${btn_save}
    Sleep    5 Seconds
    Click Button    ${btn_confirm}
    Sleep    10 Seconds

#    Click Element    ${family}


