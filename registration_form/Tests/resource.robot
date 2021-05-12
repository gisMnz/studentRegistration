*** Settings ***

Library         SeleniumLibrary
Library         Browser


*** Keywords ***
Open Form
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ToolsQA Page Should Be Open

ToolsQA Page Should Be Open
    Title Should Be     ToolsQA

Input First Name ${input_firstName} with ${firstName_value}
    Input Text          ${input_firstName}     ${firstName_value}

Input Last Name ${input_lastName} with ${lastName_value}
    Input Text          ${input_lastName}     ${lastName_value}

Choose Gender_M
    Click Element       ${gender_m}

Choose Gender_F
    Click Element       ${gender_f}

Choose Gender_O
    Click Element       ${gender_o}

Input Phone Number ${input_phone} with ${phone_value}
    Input Text          ${input_phone}     ${phone_value}


Clear Date of Birth ${input_date_of_birth}
    Clear Element Text      ${input_date_of_birth}

Input Date of Birth
    [Arguments]    ${date_of_birth_year}     ${date_of_birth_month}
    Click Element    ${input_date_of_birth}
    Select From List By Label     ${date_of_birth_year_drop_down}    ${date_of_birth_year}
    Select From List By Label     ${date_of_birth_month_drop_down}    ${date_of_birth_month}
    Click Element    ${date_of_birth_day_drop_down}

Choose Hobbies_Sports
    Click Element    ${hobbies_sports}

Input Subjects ${input_subjects} with ${subjects_value}
    Input Text          ${input_subjects}     ${subjects_value}

Choose Subjects Arts
    Click Element    ${input_subjects_arts}

Attach File
    #Scroll Element Into View    ${choose_file}
    #Click Element    ${choose_file}
    Choose File    ${choose_file}   ${file}

Input Adress ${fill_address} with ${adress_value}
    Input Text          ${fill_address}     ${adress_value}

State
    Scroll Element Into View    ${state_combobox}
    Click Element    ${state_combobox}

Scroll to Element
    [Arguments]    ${element}
    Scroll Element Into View    ${element}
    SeleniumLibrary.Execute JavaScript    window.scrollBy(0, 65)

Submit
    Click Button   ${submit}