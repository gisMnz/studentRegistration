*** Settings ***
Library    SeleniumLibrary
Library    Browser
Library    ScreenCapLibrary
Library    utils.py

*** Keywords ***

Remove Old Results
    Remove Old Log Prints    .png
    Remove Old Log Prints    .webm

Open Form
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ToolsQA Page Should Be Open
    Start Video Recording       #REFACTOR: gravar somente a página em teste

ToolsQA Page Should Be Open
    Title Should Be     ToolsQA

Input First Name ${input_firstName} with ${firstName_value}
    Input Text          ${input_firstName}     ${firstName_value}

Input Last Name ${input_lastName} with ${lastName_value}
    Input Text          ${input_lastName}     ${lastName_value}

Input email ${input_email} with ${email_value}
    Input Text    ${input_email}    ${email_value}

Choose Gender_M
    Click Element       ${gender_m}

Choose Gender_F
    Click Element       ${gender_f}

Choose Gender_O
    Click Element       ${gender_o}

Input Phone Number ${input_phone} with ${phone_value}
    Input Text          ${input_phone}     ${phone_value}

Input Date of Birth
    [Arguments]    ${input_date_of_birth}   ${date_of_birth_year}     ${date_of_birth_month}
    Clear Element Text      ${input_date_of_birth}
    Click Element    ${input_date_of_birth}
    Select From List By Label     ${date_of_birth_year_drop_down}    ${date_of_birth_year}
    Select From List By Label     ${date_of_birth_month_drop_down}    ${date_of_birth_month}
    Click Element    ${date_of_birth_day_20}

Choose Hobbies_Sports
    Click Element    ${hobbies_sports}

Choose Hobbies_Reading
    Click Element    ${hobbies_reading}

Choose Hobbies_Music
    Click Element    ${hobbies_music}

Input Subjects ${input_subjects} with ${subjects_value}
    Input Text          ${input_subjects}     ${subjects_value}

Choose Subjects Arts
    Click Element    ${input_subjects_arts}

Choose Subjects Biology
    Click Element    ${input_subjects_biology}

Choose Subjects Hindi
    Wait Until Element Is Visible       ${input_subjects_hindi}
    Click Element    ${input_subjects_hindi}

Choose Subjects Maths
    Click Element    ${input_subjects_maths}

Attach File
    Choose File    ${choose_file}   ${file}

Input Adress ${fill_address} with ${adress_value}
    Input Text         ${fill_address}     ${adress_value}

Choose State NCR
    Click Element    ${state_combobox}
    Wait Until Element Is Visible    ${input_state_ncr}
    Scroll to Element    ${input_state_ncr}
    Click Element    ${input_state_ncr}

Choose City Noida
    Click Element    ${city_combobox}
    Wait Until Element Is Visible    ${input_city_noida}
    Scroll to Element    ${input_city_noida}
    Click Element    ${input_city_noida}

Choose State RAJASTHAN
    Click Element    ${state_combobox}
    Wait Until Element Is Visible    ${input_state_rajasthan}
    Scroll to Element    ${input_state_rajasthan}
    Click Element    ${input_state_rajasthan}

Choose City Jaipur
    Click Element    ${city_combobox}
    Wait Until Element Is Visible    ${input_city_jaipur}
    Scroll to Element    ${input_city_jaipur}
    Click Element    ${input_city_jaipur}

Choose State HARYANA
    Click Element    ${state_combobox}
    Wait Until Element Is Visible    ${input_state_haryana}
    Scroll to Element    ${input_state_haryana}
    Click Element    ${input_state_haryana}

Choose City Karnal
    Click Element    ${city_combobox}
    Wait Until Element Is Visible    ${input_city_karnal}
    Scroll to Element    ${input_city_karnal}
    Click Element    ${input_city_karnal}

Scroll to Element
    [Arguments]    ${element}
    Scroll Element Into View    ${element}
    SeleniumLibrary.Execute JavaScript    window.scrollBy(0, 65)

Submit
    Click Button   ${submit}

Validation Success Scenario
    [Arguments]     ${firstName_value}       ${lastName_value}      ${phone_value}      ${adress_value}
    Wait Until Element Is Visible    ${dialog}
    Page Should Contain    Thanks for submitting the form
    Element Text Should Be    ${student_name}    ${firstName_value} ${lastName_value}
    Element Text Should Be    ${mobile}    ${phone_value}
    Element Text Should Be    ${adress}    ${adress_value}

Validation Unsuccessful Scenario
    Element Should Not Be Visible    ${dialog}
    Capture Element Screenshot    ${input_email}

Close Form
    Capture Page Screenshot     #Refactor: Take Screenshot fullPage (dialog) ou outra forma
    Stop Video Recording
    SeleniumLibrary.Close Browser





