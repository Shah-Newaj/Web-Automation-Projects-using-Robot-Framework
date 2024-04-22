*** Settings ***
Library    SeleniumLibrary
Library    Process
Resource    ../Resources/Emp_general_infoKeywords.robot

*** Variables ***
${SiteUrl}      https://myanhris.scibd.info
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
    Click Element    ${employment}
    Click Element    ${empgeneralinfo}
#    Click Button    ${btn_add}
#    Set Selenium Implicit Wait    value
#    Go To    https://myanhris.scibd.info/View/EmpInfo/EmpInfo
    Employee Id
    Full Name
    Full Name Burmese
    Date of Birth
    Place of Birth
    Preferred Name
    Blood Group
    Gender
    Religion
    Sleep    5 Seconds
    Click Button    ${btn_save}
#    Click Element    ${family}


