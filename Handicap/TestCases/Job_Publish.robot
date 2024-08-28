*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Keywords.robot
Resource    ../Resources/Recruitment_Request_Keywords.robot
Resource    ../Resources/Job_Advertisement_Keywords.robot

*** Variables ***
${SiteUrl}      https://test.jobs.hi-bd.org/admin/login
${Browser}      Chrome
${username}     admin
${password}     123456
#${aplcnt_pos_title}     ${position_title}


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
    Recruitment_Request_Keywords.Click Add New
    Project/Department  MEAL
    Name of Head of Department  Abdullah
    Position Title  Project Manager
    Job Description     Supply Chain Officer
    Number of Positions     03
    Employee at present in this company     Yes
    Location    Dhaka
    Type of Appointment     Permanent
    Job Starting date   20-08-2024
    Job Ending date     31-12-2025
    Vacancy caused due to   Resignation
    Range of Salary From    35000
    Type of Recruitment     External Recruitment
    HOD (Assign To)         1
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
    Position Title  SQA Automation 4
    Job Description     Education Program Coordinator
    Number of Positions     05
    Employee at present in this company     No
    Location    Rajshahi
    Type of Appointment     Fixed Term
    Job Starting date   01-01-2025
    Job Ending date     07-08-2026
    Vacancy caused due to   Termination
    Range of Salary From    40000
    Type of Recruitment     Internal Recruitment
    HOD (Assign To)         9
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

Job Advertisement
    Click Job
    Click Job Advertisement
    Job_Advertisement_Keywords.Click Add New
Primary Job Information
    Job Request Id    1093  #Must Change ID in Every Run
    Job Category    Technical
    Job Type    Contractual
    Role Type    Intern
    Published date    18-08-2024
    Application deadline    30-08-2024
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

Criteria
    Click Job
    Click Job Advertisement
    Click Criteria
    Sleep    5s
    Criteria 1    Technical Interview
    Point 1    5
    Status 1    Mandatory
    Sleep    2s
    Add Row
    Criteria 2    Written Exam
    Point 2    3
    Status 2    Mandatory
    Sleep    2s
    Add Row
    Criteria 3    HR Interview
    Point 3    2
    Status 3    Optional
    Save_Criteria
    Sleep    3s
    Submission Check    Job Advertisement List

Job Restriction
#    Click Job
    Click Job Restriction
    Job_Advertisement_Keywords.Click Add New
    Job Request Id - Restriction    1093
    Question 1    Test Question 1
    Question 2    Test Question 2
    Question 3    Test Question 3
    Question 4    Test Question 4
    Question 5    Test Question 5
    Question 6    Test Question 6
    Question 7    Test Question 7
    Question 8    Test Question 8
    Question 9    Test Question 9
    Question 10    Test Question 10
    Sleep    3s
    Save_Continue_Restriction
    Sleep    3s
    Submission Check    Job Restriction Question List

Job Publish
    Click Job Advertisement
    Click Job Publish
    
Check Published Job
    Go To    https://test.jobs.hi-bd.org/
    Input Text    ${search_txt}    SQA Automation 4     #Must change according to Job Position Title
    Sleep    3s
    Click Button    ${search_btn}
    Sleep    5s
    Page Should Contain    SQA Automation 4
    Sleep    3s