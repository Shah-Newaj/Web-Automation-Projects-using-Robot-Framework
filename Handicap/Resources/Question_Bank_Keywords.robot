*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Question_Bank_Locator.py

*** Keywords ***
Click Question Bank
    Click Element    ${nav_question_bank}

Click Question Create
    Click Element    ${nav_question_create}

Click Quiz Generate
    Click Element    ${nav_quiz_generate}

Click Written Test
    Click Element    ${nav_written_test}

Click Interview
    Click Element    ${nav_interview}

Click Add New
    Click Element   ${add_new}
    
Click Save
    Click Element    ${btn_save}    

Title
    [Arguments]     ${arg_question_title}
    Input Text    ${question_title}    ${arg_question_title}

Note
    [Arguments]     ${arg_note}
    Input Text    ${note}    ${arg_note}

Job Category
    [Arguments]     ${arg_job_category}
    Select From List By Label    ${job_category}    ${arg_job_category}

#Question Create Page Elements
Question Type
    [Arguments]     ${arg_question_type}
    Select From List By Label    ${question_type}   ${arg_question_type}

Question Quiz Option 1
    [Arguments]     ${arg_txtbx_option_1}
    Input Text    ${txtbx_option_1}    ${arg_txtbx_option_1}
    Click Element    ${chkbx_option_1}

Question Quiz Option 2
    [Arguments]     ${arg_txtbx_option_2}
    Input Text    ${txtbx_option_2}    ${arg_txtbx_option_2}
    Click Element    ${chkbx_option_2}


#Quiz Generate Page Elements
Examiner
    [Arguments]     ${arg_examiner}
    Select From List By Label    ${examiner}    ${arg_examiner}

Select Question 1
    [Arguments]     ${arg_txt_slct_question_1}
    Click Element    ${chkbx_slct_question_1}
    Input Text    ${txt_slct_question_1}    ${arg_txt_slct_question_1}

Select Question 2
    [Arguments]     ${arg_txt_slct_question_2}
    Click Element    ${chkbx_slct_question_2}
    Input Text    ${txt_slct_question_2}    ${arg_txt_slct_question_2}


#Written Test Page Elements
Written Test Job Category
    [Arguments]     ${arg_written_test_job_category}
    Select From List By Label    ${written_test_job_category}    ${arg_written_test_job_category}

Job Posting
    [Arguments]     ${arg_job_posting}
    Select From List By Label    ${job_posting}    ${arg_job_posting}

Eligibility
    [Arguments]     ${arg_eligibility}
    Input Text    ${eligibility}    ${arg_eligibility}

Question Set
    [Arguments]     ${arg_question_set}
    Select From List By Label    ${question_set}    ${arg_question_set}

Exam Duration
    [Arguments]     ${arg_exam_duration}
    Input Text    ${exam_duration}    ${arg_exam_duration}

Start Date
    [Arguments]     ${arg_start_date}
    Input Text    ${start_date}    ${arg_start_date}

End Date
    [Arguments]     ${arg_end_date}
    Input Text    ${end_date}    ${arg_end_date}

Interview Type
    [Arguments]     ${arg_interview_type}
    Select From List By Label    ${interview_type}    ${arg_interview_type}