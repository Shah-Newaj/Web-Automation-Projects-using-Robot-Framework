*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Click Recruitment Request
    Click Element    ${r_request}

Click Hiring Manager
    Click Element    ${hiring_manager}

Click Add New
    Click Element   ${add_new}
#    Must use Element here otherwise it will not work although it's a button

Project/Department
    Select From List By Label    ${project}   MEAL

Name of Head of Department
    Input Text    ${name_of_HD}    Abdullah

Position Title
    Input Text    ${position_title}    Project Manager

Job Description
    Select From List By Label    ${job_des}   Protection Officer

Number of Positions
    Input Text    ${number_pos}    03

Employee at present in this company
    Select From List By Value    ${present_employee}   Yes

Location
    Input Text    ${location}    Rajshahi

Type of Appointment
    Select From List By Value    ${appointment_type}    Permanent

Job Starting date
    Input Text    ${job_starting_date}    20-08-2024

Job Ending date
    Input Text    ${job_ending_date}    31-12-2025

Vacancy caused due to
    Input Text    ${vacancy_caused}    Resignation

Range of Salary From
    Input Text    ${salary_range_from}    35000

Type of Recruitment
    Select From List By Label    ${recruitment_type}    External Recruitment

HOD (Assign To)
    Select From List By Value    ${hod}     38

Range of Salary To
    Input Text    ${salary_range_to}    45000
    
Comments
    Input Text    ${comment}    As the potential candidate are available externally, we have decided to try to find the candidate through external recruitment process first.
    
Confirm Submit
    Click Button    ${confirm_submit}
    
Submission Check
    Page Should Contain    Recruitment Request List
    
Click Nav Hod
    Click Element    ${nav_hod}
    
Click Edit
    Click Element    ${edit}

C HR Manager
    Select From List By Value    ${c_hr_manager}    1

C F Manager
    Select From List By Value    ${c_f_manager}     32
    
HOD I Agree
    Select Checkbox    ${hod_i_agree}    
    
CLick Nav C HR Manager
    Click Element    ${nav_c_hr_manager}
    
Click Nav C F Manager
    Click Element    ${nav_c_f_manager}
    
CHRM I Agree
    Select Checkbox    ${chrm_i_agree}
    
CFM I Agree
    Select Checkbox    ${cfm_i_agree}                