browser = "chrome"
url = "https://demoqa.com/automation-practice-form"
# Xpaths
input_first_name = "//input[@id='firstName']"
input_last_name = "//input[@id='lastName']"
input_email = "//input[@id='userEmail']"
gender_m = "//label[contains(text(),'Male')]"
gender_f = "//label[contains(text(),'Female')]"
gender_o = "//label[contains(text(),'Other')]"
input_phone = "//input[@id='userNumber']"
input_date_of_birth = "//input[@id='dateOfBirthInput']"
date_of_birth_year_drop_down = "//select[@class='react-datepicker__year-select']"
date_of_birth_month_drop_down = "//select[@class='react-datepicker__month-select']"
#date_of_birth_day_drop_down = "//div[contains(@class, 'react-datepicker__week') and contains(.//div, '20') ]"
date_of_birth_day_20 = "//div[contains(text(),'20')]"
input_subjects = "//input[@id='subjectsInput']"
input_subjects_arts = "//div[contains(@class, 'subjects-auto-complete__option') and contains(string(), 'Arts') ]"
input_subjects_biology = "//div[contains(@class, 'subjects-auto-complete__option') and contains(string(), 'Biology') ]"
input_subjects_hindi = "//div[contains(@class, 'subjects-auto-complete__option') and contains (@id, 'react-select-2-option-0') ]"
input_subjects_maths = "//div[contains(@class, 'subjects-auto-complete__option') and contains(string(), 'Maths') ]"
hobbies_sports = "//label[contains(text(),'Sports')]"
hobbies_reading = "//label[contains(text(),'Reading')]"
hobbies_music = "//label[contains(text(),'Music')]"
choose_file = "//input[@id='uploadPicture']"
file = "C:\\Users\\gmenezes\\Projects\\Student_Registration\\registration_form\\Tests\\Wallpaper.jpg"
fill_address = "//textarea[@id='currentAddress']"
state_combobox = "id:state"
city_combobox = "id:city"
input_state_ncr = "//div[contains(@class, ' css-yt9ioa-option') and contains(string(), 'NCR') ]"
input_city_noida = "//div[contains(@id, 'react-select-4-option-2')]"
input_state_haryana = "//div[contains(@id, 'react-select-3-option-2')]"
input_city_karnal = "//div[contains(@id, 'react-select-4-option-0')]"
input_state_rajasthan = "//div[contains(@id, 'react-select-3-option-3')]"
input_city_jaipur = "//div[contains(@id, 'react-select-4-option-0')]"
student_name = "css:body.modal-open:nth-child(2) div.fade.modal.show:nth-child(5) div.modal-dialog.modal-lg div.modal-content div.modal-body div.table-responsive table.table.table-dark.table-striped.table-bordered.table-hover tbody:nth-child(2) tr:nth-child(1) > td:nth-child(2)"
mobile = "css:body.modal-open:nth-child(2) div.fade.modal.show:nth-child(5) div.modal-dialog.modal-lg div.modal-content div.modal-body div.table-responsive table.table.table-dark.table-striped.table-bordered.table-hover tbody:nth-child(2) tr:nth-child(4) > td:nth-child(2)"
adress = "css:body.modal-open:nth-child(2) div.fade.modal.show:nth-child(5) div.modal-dialog.modal-lg div.modal-content div.modal-body div.table-responsive table.table.table-dark.table-striped.table-bordered.table-hover tbody:nth-child(2) tr:nth-child(9) > td:nth-child(2)"
submit = "//button[@id='submit']"
close_button = "//button[@id='closeLargeModal']"
dialog = "//body/div[3]/div[1]/div[1]"
