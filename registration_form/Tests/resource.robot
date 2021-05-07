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

Input First Name "${input_firstName}" with "${firstName_value}"
    Input Text          ${input_firstName}     ${firstName_value}

Input Last Name "${input_lastName}" with "${lastName_value}"
    Input Text          ${input_lastName}     ${lastName_value}

Choose Gender_M
    Click Element       ${gender_m}

Choose Gender_F
    Click Element       ${gender_f}

Choose Gender_O
    Click Element       ${gender_o}

Input Phone Number "${input_phone}" with "${phone_value}"
    Input Text          ${input_phone}     ${phone_value}


Clear Date of Birth "${input_date_of_birth}"
    Clear Text      "${input_date_of_birth}"

Input Date of Birth "${input_date_of_birth}" with "${date_of_birth_value}"
    Input Text          ${input_date_of_birth}     ${date_of_birth_value}

Choose Hobbies_Sports
    Click Element    ${hobbies_sports}


State
    Click Element    ${state_combobox}

Scroll to Element
    [Arguments]    ${element}
    Scroll Element Into View    ${element}
    SeleniumLibrary.Execute JavaScript    window.scrollBy(0, 65)

Submit
    Click Button   ${submit}