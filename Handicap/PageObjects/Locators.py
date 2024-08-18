#Login Page Elements
txt_loginUserName = "name:username"
txt_loginPassword = "name:password"
btn_signIn = "xpath://button[@type='submit']"

#Left Navbar Elements - Recruitment Request
r_request = "xpath://a[normalize-space()='Recruitment Request']"
hiring_manager = "xpath://a[normalize-space()='Hiring Manager']"
nav_hod = "link:HOD"
nav_c_hr_manager = "link:C HR Manager"
nav_c_f_manager = "link:C F Manager"
add_new = "link:Add New"
# add_new = "xpath://a[normalize-space()='Add New']" this will also work for "Add New" button

#Recruitment Request - Recruitment Request Form Page Elements
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
edit = "xpath://tr[@id='60']//a[@class='edit btn btn-info btn-sm1']" #Must Change ID in every run

#Recruitment Request - Approval Process Elements
c_hr_manager = "id:chrm_id"
c_f_manager = "id:cfm_id"
hod_i_agree = "name:hodam_status"
chrm_i_agree = "name:chrm_status"
cfm_i_agree = "name:cfm_status"

#Left Navbar Elements - Job
job = "link:Job"
nav_job_adv = "link:Job Advertisement"
nav_job_restriction = "link:Job Restriction"

#Job - Job Advertisement Page Elements
#Primary Job Information Page Elements
job_request_id = "id:recruitment_id"
job_categroy = "id:category_id"
job_type = "id:employment_status"
role_type = "id:employee_type"
published_date = "id:published_date"
application_deadline = "id:application_deadline"
special_instruction = "xpath://iframe[@id='special_instruction_ifr']"
special_instruction_body = "id:tinymce"
save = "name:save"

#More Job Information Page Elements
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
show_salary_radio = "name:salary_status"
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


