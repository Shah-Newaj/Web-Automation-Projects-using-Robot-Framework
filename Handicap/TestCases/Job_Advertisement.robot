*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Keywords.robot
Resource    ../Resources/Job_Advertisement_Keywords.robot

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

Job Advertisement
    Click Job
    Click Job Advertisement
    Click Add New
Primary Job Information
    Job Request Id    1155
    Job Category    Technical
    Job Type    Contractual
    Role Type    Intern
    Published date    13-08-2024
    Application deadline    20-08-2024
    Scroll Element Into View    ${save}
    Special Instruction    This is Special Instruction for Job seekers. You need to complete daily task.
    Sleep    3 Seconds
    Save
    Sleep    5 Seconds
More Job Information
    More Job Information
    Job Level    Top
    Job Context    Handicap International-Humanity & Inclusion (HI) has been working
    Job Responsibilities    Mission 1: Management
    Workplace    Work from home
    Area    Field
    Job Location    Dhaka
    Salary From    35000
    Salary To    45000
    Sleep    2 Seconds
#    Show Salary    2
    Additional Salary    A hardship allowance will be added to working in Cox's Bazar District only.
    Festival Bonus
    Gratuity
    Leave
    Maternity Coverage
    Medical Coverage
    Mobile Allowances
    Per diem
    Provident Fund
    Staff Group Life Insurance
    Weekly Holiday
    Other Benefits    Staff will get sick leave, annual leave, casual leave, medical leave, and event leave as per HI policy.
    Scroll Element Into View    link:Handicap International
    Save and Continue

