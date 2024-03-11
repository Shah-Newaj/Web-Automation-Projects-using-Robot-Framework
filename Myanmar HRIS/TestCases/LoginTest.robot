*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}      https://myanhris.scibd.info/Account/Login
${Browser}      Chrome
${username}     123456789
${password}     12345


*** Test Cases ***
Login Test
    Open my browser    ${SiteUrl}  ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Sign in
    Sleep    3seconds
    Verify Successful Login
    Close my browser