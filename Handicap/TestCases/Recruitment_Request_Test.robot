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
Lgin Test
    Open my browser    ${SiteUrl}  ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Sign in
    Sleep    3seconds
    Verify Successful Login


Recruitment Request Handicap
    Click Recruitment Request
    Click Hiring Manager
    Sleep    3seconds
    Click Add New
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
    Scroll Element Into View    ${confirm_submit}
    Comments
    Confirm Submit
    Submission Check
    Sleep    5 Seconds
#    Close Browser

#Edit Recruitment
#    Click Edit

Approval Process
    Click Nav Hod
    Click Edit
    C HR Manager
    C F Manager
    Scroll Element Into View    ${confirm_submit}
    HOD I Agree
    Sleep    3 Seconds
    Confirm Submit
    Sleep    3 Seconds
    Submission Check
    Sleep    3 Seconds
    CLick Nav C HR Manager
    Click Edit
    Scroll Element Into View    ${confirm_submit}
    CHRM I Agree
    Sleep    3 Seconds
    Confirm Submit
    Sleep    3 Seconds
    Submission Check
    Sleep    3 Seconds
    Click Nav C F Manager
    Click Edit
    Scroll Element Into View    ${confirm_submit}
    CFM I Agree
    Sleep    3 Seconds
    Confirm Submit
    Sleep    3 Seconds
    Submission Check
    Sleep    3 Seconds
    Close Browser