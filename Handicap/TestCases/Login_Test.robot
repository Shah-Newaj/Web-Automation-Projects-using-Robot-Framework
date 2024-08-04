*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Keywords.robot

*** Variables ***
${SiteUrl}      https://jobs.hi-bd.org/admin/login
${Browser}      Chrome
${username}     admin
${password}     123456


*** Test Cases ***
Login Test Handicap
    Open my browser    ${SiteUrl}  ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Sign in
    Sleep    3seconds
    Verify Successful Login
    Close my browser