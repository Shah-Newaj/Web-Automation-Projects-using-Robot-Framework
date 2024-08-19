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
    Job Request Id    1163  #Must Change ID in Every Run
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
    Show Salary_More
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
    Save_More_Info
Candidate Requirements
    Candidate Requirements
    Educational Qualification    Test Educational Qualification
    Training/Trade Course    Test Training/Trade Course
    Professional Certification    Test Professional Certification
    Experience
    Minimum year of experience    1
    Maximum year of experience    3
    Freshers
    Scroll Element Into View    ${min_age}
    Area of Expertise    HR Analytics
    Skills    Communication
    Additional Requirements    Test Additional Requirements
    Gender
    Minimum age    25
    Maximum age    35
    Sleep    3s
    Scroll Element Into View    link:Handicap International
    Save_Candidate

Minimize Irrelevant Application
    Minimize Irrelevant Application
    Age_Minimize
    Total Years of Experience
    Gender_Minimize
    Salary_Minimize
    Job Level_Minimize
    Job Category_Minimize
    Job Type_Minimize
    Role Type_Minimize
    Area_Minimize
    Area of Expertise_Minimize
    Skills_Minimize
    Sleep    3s
    Save_Minimize
    
Preview
    Preview
    Scroll Element Into View    link:Handicap International
    Sleep    3s
    Save_Preview    
