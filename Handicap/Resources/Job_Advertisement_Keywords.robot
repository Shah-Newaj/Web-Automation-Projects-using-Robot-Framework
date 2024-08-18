*** Settings ***
Library     SeleniumLibrary
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

Show Salary
    [Arguments]     ${arg_show_salary}
    Select Radio Button    ${show_salary_radio}    ${arg_show_salary}

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

Save and Continue
    Click Button    ${save_continue}