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
    [Arguments]     ${arg_project}
    Select From List By Label    ${project}   ${arg_project}

Name of Head of Department
    [Arguments]     ${arg_name_of_HD}
    Input Text    ${name_of_HD}    ${arg_name_of_HD}

Position Title
    [Arguments]     ${arg_position_title}
    Input Text    ${position_title}    ${arg_position_title}

Job Description
    [Arguments]     ${arg_job_des}
    Select From List By Label    ${job_des}   ${arg_job_des}

Number of Positions
    [Arguments]     ${arg_number_pos}
    Input Text    ${number_pos}    ${arg_number_pos}

Employee at present in this company
    [Arguments]     ${arg_present_employee}
    Select From List By Value    ${present_employee}   ${arg_present_employee}

Location
    [Arguments]     ${arg_location}
    Input Text    ${location}    ${arg_location}

Type of Appointment
    [Arguments]     ${arg_appointment_type}
    Select From List By Value    ${appointment_type}    ${arg_appointment_type}

Job Starting date
    [Arguments]     ${arg_job_starting_date}
    Input Text    ${job_starting_date}    ${arg_job_starting_date}

Job Ending date
    [Arguments]     ${arg_job_ending_date}
    Input Text    ${job_ending_date}    ${arg_job_ending_date}

Vacancy caused due to
    [Arguments]     ${arg_vacancy_caused}
    Input Text    ${vacancy_caused}    ${arg_vacancy_caused}

Range of Salary From
    [Arguments]     ${arg_salary_range_from}
    Input Text    ${salary_range_from}    ${arg_salary_range_from}

Type of Recruitment
    [Arguments]     ${arg_recruitment_type}
    Select From List By Label    ${recruitment_type}    ${arg_recruitment_type}

HOD (Assign To)
    [Arguments]     ${arg_hod}
    Select From List By Value    ${hod}     ${arg_hod}

Range of Salary To
    [Arguments]     ${arg_range_to}
    Input Text    ${salary_range_to}    ${arg_range_to}
    
Comments
    [Arguments]     ${arg_comment}
    Input Text    ${comment}    ${arg_comment}
    
Confirm Submit
    Click Button    ${confirm_submit}
    
Submission Check
    [Arguments]     ${arg_submission_check}
    Page Should Contain    ${arg_submission_check}
    
Click Nav Hod
    Click Element    ${nav_hod}
    
Click Edit
    Click Element    ${edit}

C HR Manager
    Select From List By Value    ${c_hr_manager}    1

C F Manager
    Select From List By Value    ${c_f_manager}     9
    
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