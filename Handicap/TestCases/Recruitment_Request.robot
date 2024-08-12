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
Login
    Open my browser    ${SiteUrl}  ${Browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Sign in
    Sleep    3seconds
    Verify Successful Login


Recruitment Request
    Click Recruitment Request
    Click Hiring Manager
    Sleep    3seconds
    Click Add New
    Project/Department  MEAL
    Name of Head of Department  Abdullah
    Position Title  Project Manager
    Job Description     Protection Officer
    Number of Positions     03
    Employee at present in this company     Yes
    Location    Dhaka
    Type of Appointment     Permanent
    Job Starting date   20-08-2024
    Job Ending date     31-12-2025
    Vacancy caused due to   Resignation
    Range of Salary From    35000
    Type of Recruitment     External Recruitment
    HOD (Assign To)         38
    Range of Salary To      45000
    Scroll Element Into View    ${confirm_submit}
    Comments    As the potential candidate are available externally, we have decided to try to find the candidate through external recruitment process first.
    Confirm Submit
    Submission Check    Recruitment Request List
    Sleep    5 Seconds


Edit Recruitment
    Click Edit
    Project/Department  SQA
    Name of Head of Department  Shah Newaj
    Position Title  SQA Automation
    Job Description     Team Manager
    Number of Positions     05
    Employee at present in this company     No
    Location    Rajshahi
    Type of Appointment     Fixed Term
    Job Starting date   01-01-2025
    Job Ending date     07-08-2026
    Vacancy caused due to   Termination
    Range of Salary From    40000
    Type of Recruitment     Internal Recruitment
    HOD (Assign To)         40
    Range of Salary To      60000
    Scroll Element Into View    ${confirm_submit}
    Comments    We have decided to try to find the candidate through internal recruitment process first.
    Confirm Submit
    Submission Check    Recruitment Request List
    Sleep    5 Seconds

HOD Approval
    Click Nav Hod
    Click Edit
    C HR Manager
    C F Manager
    Scroll Element Into View    ${confirm_submit}
    HOD I Agree
    Sleep    3 Seconds
    Confirm Submit
    Sleep    3 Seconds
    Submission Check    Recruitment Request List
    Sleep    3 Seconds

C HR Manager Approval
    CLick Nav C HR Manager
    Click Edit
    Scroll Element Into View    ${confirm_submit}
    CHRM I Agree
    Sleep    3 Seconds
    Confirm Submit
    Sleep    3 Seconds
    Submission Check    Recruitment Request List
    Sleep    3 Seconds

C F Manager Approval
    Click Nav C F Manager
    Click Edit
    Scroll Element Into View    ${confirm_submit}
    CFM I Agree
    Sleep    3 Seconds
    Confirm Submit
    Sleep    3 Seconds
    Submission Check    Recruitment Request List
    Sleep    3 Seconds
    Close Browser