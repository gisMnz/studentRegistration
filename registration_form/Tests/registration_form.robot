*** Settings ***
Resource        resource.robot
Variables       variables.py
#Suite Setup     Open Form
#Suite Teardown  Close Form

*** Test Cases ***

AT-001 - Registration - Successfull Registration
    [Documentation]     *Title:* AT-001 - Registration - Successfull Registration
    Open Form
    Input First Name ${input_firstName} with João
    Input Last Name ${input_lastName} with Santos
    Input email ${input_email} with joao@example.com
    Choose Gender_M
    Input Phone Number ${input_phone} with 9876543210
    Clear Date of Birth ${input_date_of_birth}
    Input Date of Birth    1980    April
    Input Subjects ${input_subjects} with Arts
    Choose Subjects Arts
    Scroll to Element    ${hobbies_sports}
    Wait Until Element Contains    ${hobbies_sports}    Sports    2
    Choose Hobbies_Sports
    Attach File
    Input Adress ${fill_address} with Avenue, 1
    Scroll to Element    ${state_combobox}
    Choose State NCR
    Scroll to Element    ${city_combobox}
    Choose City Noida
    Scroll to Element    ${submit}
    Submit
    Validation Success Scenario     João    Santos    9876543210    Avenue, 1
    Close Form

AT-003 - Registration - Mandatory fields only
    [Documentation]     *Title:* AT-003 - Registration - Mandatory fields only
    Open Form
    Input First Name ${input_firstName} with S
    Input Last Name ${input_lastName} with S
    Choose Gender_O
    Input Phone Number ${input_phone} with 9876543210
    Scroll to Element    ${submit}
    Submit
    Capture Page Screenshot
    Close Form

AT-004 - Registration - Unsuccessful Registration due to invalid email
    [Documentation]     *Title:* AT-004 - Registration - Unsuccessful Registration due to invalid email
    Open Form
    Input First Name ${input_firstName} with João
    Input Last Name ${input_lastName} with Santos
    Input email ${input_email} with @example.com
    Choose Gender_M
    Input Phone Number ${input_phone} with 1234567890
    Clear Date of Birth ${input_date_of_birth}
    Input Date of Birth    1980    April
    Input Subjects ${input_subjects} with Maths
    Choose Subjects Maths
    Scroll to Element    ${hobbies_music}
    Wait Until Element Contains    ${hobbies_music}    Music    2
    Choose Hobbies_Music
    Attach File
    Input Adress ${fill_address} with Avenue, 2
    Scroll to Element    ${state_combobox}
    Choose State HARYANA
    Scroll to Element    ${city_combobox}
    Choose City Karnal
    Scroll to Element    ${submit}
    Submit
    Validation Unsuccessful Scenario
    Close Form
