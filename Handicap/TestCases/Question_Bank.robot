*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Keywords.robot
Resource    ../Resources/Question_Bank_Keywords.robot


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

Question Creation
#    Set Selenium Speed    1 seconds
    Click Question Bank
    Click Question Create
    Click Add New
    Title    Employee Recruitment Examination
    Note    This Examination is to recruit employee in various section of the organization
    Question Type    checkbox
    Job Category    IT/Telecommunication
    Scroll Element Into View    ${btn_save}
    Question Quiz Option 1    Quiz Option 1
    Question Quiz Option 2    Quiz Option 2
    Click Save

Quiz Generate
    Click Quiz Generate
    Click Add New
    Title    Test Quiz implementation
    Note    Test quiz note generation
    Job Category    Programme  
    Examiner    Sadia Hima
    Scroll Element Into View    ${btn_save}
    Select Question 1    50
    Select Question 2    50
    Click Save

Written Test
    Click Written Test
    Click Add New
    Title    Written Test of Question Bank
    Note    Written Test Note
    Written Test Job Category    MEAL
    Job Posting    Senior Accountability Officer
    Eligibility    100%
    Question Set    Sr. Accountability Officer Technical Written Test
    Exam Duration    60
    Start Date    30-08-2024
    End Date    30-08-2024
    Click Save

Interview
    Click Interview
    Click Add New
    Title    Interview Question of Question Bank
    Note    Interview Note will be visible here
    Job Category    ICT
    Job Posting    MHPSS Officer
    Interview Type    HR Interview
    Eligibility    90%
    Exam Duration    40
    Examiner    Demo Demo
    Scroll Element Into View    ${btn_save}
    Select Question 1    45
    Select Question 2    45
    Click Save