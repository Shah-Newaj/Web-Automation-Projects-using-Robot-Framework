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
    Set Selenium Speed    1 second
    Project/Department
    Name of Head of Department
    Position Title
    Job Description
    Number of Positions
    Employee at present in this company
    Location
    Type of Appointment
    Job Starting date
    Job Ending date
    Vacancy caused due to
    Range of Salary From
    Type of Recruitment
    HOD (Assign To)
    Range of Salary To
    Comments
    Confirm Submit
    Submission Check
    Close Browser
