*** Settings ***
Library     SeleniumLibrary
Library    DateTime
Variables   ../PageObjects/Locators.py

*** Keywords ***
Click Job
    Click Element    ${job}

Click Job Advertisement
    Click Element    ${nav_job_adv}

Click Add New
    Click Element   ${add_new}


#Primary Job Information Page Keywords
Job Request Id
    [Arguments]     ${arg_job_request_id}
    Select From List By Label    ${job_request_id}   ${arg_job_request_id}

Job Category
    [Arguments]     ${arg_job_category}
    Select From List By Label    ${job_categroy}   ${arg_job_category}

Job Type
    [Arguments]     ${arg_job_type}
    Select From List By Label    ${job_type}   ${arg_job_type}

Role Type
    [Arguments]     ${arg_role_type}
    Select From List By Label    ${role_type}   ${arg_role_type}

Published date
    [Arguments]     ${arg_published_date}
    Input Text    ${published_date}    ${arg_published_date}

Application deadline
    [Arguments]     ${arg_application_deadline}
    Input Text    ${application_deadline}    ${arg_application_deadline}
#    Get Current Date

Special Instruction
    [Arguments]     ${arg_sp_instruction}
    Select Frame    ${special_instruction}
    Input Text    ${special_instruction_body}    ${arg_sp_instruction}
    Unselect Frame

Save
    Click Button    ${save}


#More Job Information Page Keywords
More Job Information
    Click Element    ${tab_more_job_information}
    
Job Level
    [Arguments]     ${arg_application_deadline}
    Select From List By Label    ${job_level}  ${arg_application_deadline}

Job Context
    [Arguments]     ${arg_job_context}
    Select Frame    ${job_context_ifr}
    Input Text    ${job_context_body}    ${arg_job_context}
    Unselect Frame

Job Responsibilities
    [Arguments]     ${arg_job_responsibility}
    Select Frame    ${job_responsibility_ifr}
    Input Text    ${job_responsibility_body}    ${arg_job_responsibility}
    Unselect Frame

Workplace
    [Arguments]     ${arg_workplace}
    Select From List By Label    ${workplace}   ${arg_workplace}

Area
    [Arguments]     ${arg_area}
    Select From List By Label    ${area}   ${arg_area}

Job Location
    [Arguments]     ${arg_job_location}
    Input Text   ${job_location}   ${arg_job_location}

Salary From
    [Arguments]     ${arg_salary_from}
    Input Text    ${salary_from}    ${arg_salary_from}

Salary To
    [Arguments]     ${arg_salary_to}
    Input Text    ${salary_to}    ${arg_salary_to}

Show Salary_More
    Click Element    ${show_salary_radio}

Additional Salary
    [Arguments]     ${arg_additional_salary}
    Select Frame    ${additional_salary_ifr}
    Input Text    ${additional_salary_body}    ${arg_additional_salary}
    Unselect Frame

Festival Bonus
    Select Checkbox    ${chk_Festival_Bonus}
Gratuity
    Select Checkbox    ${chk_Gratuity}
Leave
    Select Checkbox    ${chk_Leave}
Maternity Coverage
    Select Checkbox    ${chk_Maternity_Coverage}
Medical Coverage
    Select Checkbox    ${chk_Medical_Coverage}
Mobile Allowances
    Select Checkbox    ${chk_Mobile_Allowances}
Per diem
    Select Checkbox    ${chk_Per_diem}
Provident Fund
    Select Checkbox    ${chk_Provident_Fund}
Staff Group Life Insurance
    Select Checkbox    ${chk_Staff_Group_Life_Insurance}
Weekly Holiday
    Select Checkbox    ${chk_Weekly_Holiday}

Other Benefits
    [Arguments]     ${arg_other_benefits}
    Select Frame    ${other_benefits_ifr}
    Input Text    ${other_benefits_body}    ${arg_other_benefits}
    Unselect Frame

Save_More_Info
    Click Button    ${save_more}


#Candidate Requirements Page Keywords
Candidate Requirements
    Click Element    ${tab_candidate_requirements}

Educational Qualification
    [Arguments]     ${arg_educational_qualification}
    Input Text    ${educational_qualification}    ${arg_educational_qualification}

Training/Trade Course
    [Arguments]     ${arg_training_course}
    Input Text    ${training_course}    ${arg_training_course}

Professional Certification
    [Arguments]     ${arg_professional_certification}
    Input Text    ${professional_certification}    ${arg_professional_certification}

Experience
    Click Element    ${experience_status_radio}

Minimum year of experience
    [Arguments]     ${arg_min_experience}
    Input Text    ${min_experience}    ${arg_min_experience}

Maximum year of experience
    [Arguments]     ${arg_max_experience}
    Input Text    ${max_experience}    ${arg_max_experience}

Freshers
    Select Checkbox    ${chk_is_fresher_apply}

Area of Expertise
    [Arguments]     ${arg_expertise}
    Select From List By Label    ${expertise}    ${arg_expertise}

Skills
    [Arguments]     ${arg_skills}
    Select From List By Label    ${skills}    ${arg_skills}

Additional Requirements
    [Arguments]     ${arg_additional_requirements}
    Select Frame    ${additional_requirements_ifr}
    Input Text    ${additional_requirements_body}    ${arg_additional_requirements}
    Unselect Frame

Gender
    Click Element    ${gender_radio}

Minimum age
    [Arguments]     ${arg_min_age}
    Input Text    ${min_age}    ${arg_min_age}

Maximum age
    [Arguments]     ${arg_max_age}
    Input Text    ${max_age}    ${arg_max_age}

Save_Candidate
    Click Button    ${save_continue_candidate}


#Minimize Irrelevant Application Page Keywords
Minimize Irrelevant Application
    Click Element    ${tab_minimize_irrelevant_application}

Age_Minimize
    Select Checkbox    ${chk_age_enabled}

Total Years of Experience
    Select Checkbox    ${chk_experience_enabled}

Gender_Minimize
    Select Checkbox    ${chk_gender_enabled}

Salary_Minimize
    Select Checkbox    ${chk_salary_enabled}

Job Level_Minimize
    Select Checkbox    ${chk_job_level_enabled}

Job Category_Minimize
    Select Checkbox    ${chk_job_category_enabled}

Job Type_Minimize
    Select Checkbox    ${chk_job_type_enabled}

Role Type_Minimize
    Select Checkbox    ${chk_role_enabled}

Area_Minimize
    Select Checkbox   ${chk_headquarter_enabled}

Area of Expertise_Minimize
    Select Checkbox    ${chk_expertise_enabled}

Skills_Minimize
    Select Checkbox    ${chk_skill_enabled}
    
Save_Minimize
    Click Button    ${save_continue_minimize}


#Preview Page Keywords
Preview
    Click Element    ${tab_preview}
    
Save_Preview
    Click Button    ${save_continue_preview}


#Criteria Page Keywords
Click Criteria
    Click Element    ${job_criteria}

Criteria 1
    [Arguments]     ${arg_criteria_1}
    Input Text    ${txt_criteria_1}    ${arg_criteria_1}

Point 1
    [Arguments]     ${arg_point_1}
    Input Text    ${txt_point_1}    ${arg_point_1}

Status 1
    [Arguments]     ${arg_criteria_status_1}
    Select From List By Label    ${criteria_status_1}   ${arg_criteria_status_1}

Criteria 2
    [Arguments]     ${arg_criteria_2}
    Input Text    ${txt_criteria_2}    ${arg_criteria_2}

Point 2
    [Arguments]     ${arg_point_2}
    Input Text    ${txt_point_2}    ${arg_point_2}

Status 2
    [Arguments]     ${arg_criteria_status_2}
    Select From List By Label    ${criteria_status_2}   ${arg_criteria_status_2}

Criteria 3
    [Arguments]     ${arg_criteria_3}
    Input Text    ${txt_criteria_3}    ${arg_criteria_3}

Point 3
    [Arguments]     ${arg_point_3}
    Input Text    ${txt_point_3}    ${arg_point_3}

Status 3
    [Arguments]     ${arg_criteria_status_3}
    Select From List By Label    ${criteria_status_3}   ${arg_criteria_status_3}

Add Row
    Click Button    ${btn_add_row}

Save_Criteria
    Click Button    ${btn_save}

#Job Restriction Page Keywords
Click Job Restriction
    Click Element    ${nav_job_restriction}

Job Request Id - Restriction
    [Arguments]     ${arg_job_request_id_restriction}
    Select From List By Label    ${job_request_id_restriction}   ${arg_job_request_id_restriction}

Question 1
    [Arguments]     ${arg_question1}
    Input Text    ${question1}    ${arg_question1}

Question 2
    [Arguments]     ${arg_question2}
    Input Text    ${question2}    ${arg_question2}

Question 3
    [Arguments]     ${arg_question3}
    Input Text    ${question3}    ${arg_question3}

Question 4
    [Arguments]     ${arg_question4}
    Input Text    ${question4}    ${arg_question4}

Question 5
    [Arguments]     ${arg_question5}
    Input Text    ${question5}    ${arg_question5}

Question 6
    [Arguments]     ${arg_question6}
    Input Text    ${question6}    ${arg_question6}

Question 7
    [Arguments]     ${arg_question7}
    Input Text    ${question7}    ${arg_question7}

Question 8
    [Arguments]     ${arg_question8}
    Input Text    ${question8}    ${arg_question8}

Question 9
    [Arguments]     ${arg_question9}
    Input Text    ${question9}    ${arg_question9}

Question 10
    [Arguments]     ${arg_question10}
    Input Text    ${question10}    ${arg_question10}

Save_Continue_Restriction
    Click Button    ${Save_continue_restriction}

#Job Publish Keywords
Click Job Publish
    Click Element    ${job_publish}
    
#Applicant Site Home Page Keywords
Text in Searchbox
    [Arguments]     ${arg_searchbox_txt}
    Input Text    ${search_txt}    ${arg_searchbox_txt}
    
Click Search
    Click Button    ${Search_btn}    