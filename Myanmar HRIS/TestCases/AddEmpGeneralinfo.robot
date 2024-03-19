*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Emp_general_infoKeywords.robot

*** Variables ***
${SiteUrl}      https://myanhris.scibd.info/Account/Login
${Browser}      Chrome
${username}     123456789
${password}     12345


*** Test Cases ***
Add Employee General Info
    Open my browser    ${SiteUrl}  ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Employment
    Click Emp_Generalinfo
