*** Settings ***
Library    SeleniumLibrary
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
    Click Element    ${family}
    Sleep    5 Seconds
#    Click Add
#    Click Employment
#    Click Emp_Generalinfo
