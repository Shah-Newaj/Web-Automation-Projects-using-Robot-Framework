# Login Page Elements
txt_loginUserName = "name:username"
txt_loginPassword = "name:password"
btn_signIn = "xpath://button[@type='submit']"

# Left Navbar Elements - Recruitment Request
r_request = "xpath://a[normalize-space()='Recruitment Request']"
hiring_manager = "xpath://a[normalize-space()='Hiring Manager']"
nav_hod = "link:HOD"
nav_c_hr_manager = "link:C HR Manager"
nav_c_f_manager = "link:C F Manager"
add_new = "link:Add New"
# add_new = "xpath://a[normalize-space()='Add New']" this will also work for "Add New" button

# Recruitment Request - Recruitment Request Form Page Elements
project = "id:department"
name_of_HD = "id:name_of_department"
position_title = "id:position_title"
job_des = "name:job_description"
number_pos = "id:number_of_position"
present_employee = "name:employee_at_present"
location = "id:location"
appointment_type = "id:appointment_type"
job_starting_date = "id:job_starting_date"
job_ending_date = "id:job_ending_date"
vacancy_caused = "id:vacancy_caused_due_to"
salary_range_from = "id:salary_range_from"
recruitment_type = "name:recruitment_type"
hod = "name:hodam_id"
salary_range_to = "id:salary_range_to"
comment = "id:comments"
save_draft = "name:save"
confirm_submit = "name:save_and_update"
edit = "xpath://tr[@id='33']//i[@class='fa fa-edit']" # Must Change Recruitment Request ID in every run

# Recruitment Request - Approval Process Elements
c_hr_manager = "id:chrm_id"
c_f_manager = "id:cfm_id"
hod_i_agree = "name:hodam_status"
chrm_i_agree = "name:chrm_status"
cfm_i_agree = "name:cfm_status"

# Left Navbar Elements - Job
job = "link:Job"
nav_job_adv = "link:Job Advertisement"
nav_job_restriction = "link:Job Restriction"

# Job - Job Advertisement Page Elements
edit_job = "xpath://tr[@id='42']//i[@class='fa fa-edit']"
# Primary Job Information Page Elements
tab_primary_job_info = "link:Primary Job Information"
job_request_id = "id:recruitment_id"
job_categroy = "id:category_id"
job_type = "id:employment_status"
role_type = "id:employee_type"
published_date = "id:published_date"
application_deadline = "id:application_deadline"
special_instruction = "xpath://iframe[@id='special_instruction_ifr']"
special_instruction_body = "id:tinymce"
save = "name:save"

# More Job Information Page Elements
tab_more_job_information = "link:More Job Information"
job_level = "name:job_level"
job_context_ifr = "id:job_context_ifr"
job_context_body = "id:tinymce"
job_responsibility_ifr = "id:job_responsibility_ifr"
job_responsibility_body = "id:tinymce"
workplace = "id:workplace"
area = "id:area_headquarters"
job_location = "id:job_location"
salary_from = "id:salary_from"
salary_to = "id:salary_to"
show_salary_radio = "id:show_salary"
additional_salary_ifr = "id:additional_salary_ifr"
additional_salary_body = "id:tinymce"
chk_Festival_Bonus = "id:inlineCheckbox-9"
chk_Gratuity = "id:inlineCheckbox-4"
chk_Leave = "id:inlineCheckbox-8"
chk_Maternity_Coverage = "id:inlineCheckbox-7"
chk_Medical_Coverage = "id:inlineCheckbox-6"
chk_Mobile_Allowances = "id:inlineCheckbox-1"
chk_Per_diem = "id:inlineCheckbox-2"
chk_Provident_Fund = "id:inlineCheckbox-3"
chk_Staff_Group_Life_Insurance = "id:inlineCheckbox-5"
chk_Weekly_Holiday = "id:inlineCheckbox-10"
other_benefits_ifr = "id:other_benefits_ifr"
other_benefits_body = "id:tinymce"
save_continue = "xpath://button[contains(text(),'Save')]"
save_more = "xpath:(//button[@name='save_and_update'][normalize-space()='Save and Continue'])[2]"

# Candidate Requirments Page Elements
tab_candidate_requirements = "link:Candidate Requirements"
educational_qualification = "id:educational_qualification"
training_course = "id:training_course"
professional_certification = "id:professional_certification"
experience_status_radio = "id:is_experience_required2"
min_experience = "id:min_experience"
max_experience = "id:max_experience"
chk_is_fresher_apply = "id:is_fresher_apply"
expertise = "id:expertise"
skills = "id:skills"
additional_requirements_ifr = "id:additional_requirements_ifr"
additional_requirements_body = "id:tinymce"
gender_radio = "id:Male"
min_age = "id:min_age"
max_age = "id:max_age"
save_continue_candidate = "xpath:(//button[@name='save_and_update'][normalize-space()='Save and Continue'])[3]"

# Minimize Irrelevant Application Page Elements
tab_minimize_irrelevant_application = "link:Minimize Irrelevant Application"
chk_age_enabled = "id:age_enabled"
chk_experience_enabled = "id:experience_enabled"
chk_gender_enabled = "id:gender_enabled"
chk_salary_enabled = "id:salary_enabled"
chk_job_level_enabled = "id:job_level_enabled"
chk_job_category_enabled = "id:job_category_enabled"
chk_job_type_enabled = "id:job_type_enabled"
chk_role_enabled = "id:role_enabled"
chk_headquarter_enabled = "id:headquarter_enabled"
chk_expertise_enabled = "id:expertise_enabled"
chk_skill_enabled = "id:skill_enabled"
save_continue_minimize = "xpath:(//button[@name='save_and_update'][normalize-space()='Save and Continue'])[4]"

# Preview Page Elements
tab_preview = "link:Preview"
save_continue_preview = "xpath:(//button[contains(@name,'save_and_update')][normalize-space()='Save and Continue'])[5]"

# Job Criteria
job_criteria = "xpath://tr[@id='16']//i[@class='fa fa fa-plus']" # Must Change id with respect to Recruitment ID number.
txt_criteria_1 = "xpath:(//textarea[@id='criteria'])[1]"
txt_point_1 = "xpath:(//input[@name='point[]'])[1]"
criteria_status_1 = "xpath:(//select[@name='status[]'])[1]"
btn_add_row = "id:add-row-btn"
txt_criteria_2 = "xpath:(//textarea[@id='criteria'])[2]"
txt_point_2 = "xpath:(//input[@name='point[]'])[2]"
criteria_status_2 = "xpath:(//select[@name='status[]'])[2]"
txt_criteria_3 = "xpath:(//textarea[@id='criteria'])[3]"
txt_point_3 = "xpath:(//input[@name='point[]'])[3]"
criteria_status_3 = "xpath:(//select[@name='status[]'])[3]"
btn_save = "name:save"

# Job Restriction Page Elements
job_request_id_restriction = "id:recruitment_id"
question1 = "id:question1"
question2 = "id:question2"
question3 = "id:question3"
question4 = "id:question4"
question5 = "id:question5"
question6 = "id:question6"
question7 = "id:question7"
question8 = "id:question8"
question9 = "id:question9"
question10 = "id:question10"
Save_continue_restriction = "xpath:(//button[normalize-space()='Save and Continue'])[1]"

# Job Publish Elements
job_publish = "xpath://tr[@id='16']//a[@class='btn btn-warning btn-sm1 status']"    # Must Focus on ID Number of the Job to be published

#Applicant Site Home Page Elements
search_txt = "xpath:(//input[@id='job_search_keyword'])[1]"
search_btn = "xpath:(//button[normalize-space()='Search'])[1]"
