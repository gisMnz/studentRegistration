*** Settings ***

Library    SeleniumLibrary
Library    Browser

*** Keywords ***

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
    Click Element    ${date_of_birth_day_drop_down}

Choose Hobbies
    [Arguments]     ${hobbie}    ${hobbies_text}   ${time}
    Scroll to Element    ${hobbie}
    Wait Until Element Contains    ${hobbie}    ${hobbies_text}   ${time}
    Click Element    ${hobbie}

Choose Subjects
    [Arguments]      ${input_subjects}     ${subjects_value}    ${input_subjects_arts}
    Input Text       ${input_subjects}     ${subjects_value}
    Click Element    ${input_subjects_arts}   #ver variável

Attach File
    Choose File    ${choose_file}   ${file}

Input Adress ${fill_address} with ${adress_value}
    Input Text         ${fill_address}     ${adress_value}

Click State
    [Arguments]     ${state_combobox}
    Scroll to Element    ${state_combobox}
    Click Element    ${state_combobox}

Choose State NCR
    Click State    ${state_combobox}
    Wait Until Element Is Visible    ${input_state_ncr}
    Scroll to Element    ${input_state_ncr}
    Click Element    ${input_state_ncr}

Choose State RAJASTHAN
    Click State    ${state_combobox}
    Wait Until Element Is Visible    ${input_state_rajasthan}
    Scroll to Element    ${input_state_rajasthan}
    Click Element    ${input_state_rajasthan}

Choose State HARYANA
    Click State    ${state_combobox}
    Wait Until Element Is Visible    ${input_state_haryana}
    Scroll to Element    ${input_state_haryana}
    Click Element    ${input_state_haryana}

Click City
    [Arguments]     ${city_combobox}
    Scroll to Element    ${city_combobox}
    Click Element    ${city_combobox}

Choose City Noida
    Click City      ${city_combobox}
    Wait Until Element Is Visible    ${input_city_noida}
    Scroll to Element    ${input_city_noida}
    Click Element    ${input_city_noida}

Choose City Jaipur
    Click City      ${city_combobox}
    Wait Until Element Is Visible    ${input_city_jaipur}
    Scroll to Element    ${input_city_jaipur}
    Click Element    ${input_city_jaipur}

Choose City Karnal
    Click City      ${city_combobox}
    Wait Until Element Is Visible    ${input_city_karnal}
    Scroll to Element    ${input_city_karnal}
    Click Element    ${input_city_karnal}

Scroll to Element
    [Arguments]    ${element}
    Scroll Element Into View    ${element}
    SeleniumLibrary.Execute JavaScript    window.scrollBy(0, 65)

Submit
    Scroll to Element    ${submit}
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


