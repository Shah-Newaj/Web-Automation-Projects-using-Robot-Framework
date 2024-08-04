*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Keywords.robot
Resource    ../Resources/Recruitment_Request_Keywords.robot

*** Variables ***
${SiteUrl}      https://jobs.hi-bd.org/admin/login
${Browser}      Chrome
${username}     admin
${password}     123456


*** Test Cases ***
Recruitment Request Handicap
    Open my browser    ${SiteUrl}  ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Sign in
    Sleep    3seconds
    Verify Successful Login
    Click Recruitment Request
    Click Hiring Manager
    Sleep    3seconds
    Click Add New
    Sleep    3seconds
    Close Browser