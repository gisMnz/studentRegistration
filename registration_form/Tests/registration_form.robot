*** Settings ***
Resource        resource.robot
Variables       variables.py

*** Test Cases ***

*** Comments ***

QAEX-TA-001 - Registration - Successfull Registration
    [Documentation]
    ...     *Title:* QAEX-TA-001 - Registration - Successfull Registration
    ...
    ...     *Description:* Verify if the user is able to enter the correct data, submit the form and see its data in the dialog window
    ...
    ...     *Owner:* Gislaine Menezes
    [Tags]      RF.01       QAEX-TA-001      PASSED
    [Setup]     Open Form
    [Teardown]      Close Form
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

*** Test Cases ***

QAEX-TA-002 - Registration - Successfull Registration with three hobbies and three subjects
    [Documentation]
    ...     *Title:* QAEX-TA-002 - Registration - Successfull Registration with three hobbies and three subjects
    ...
    ...     *Description:* Verify if the user is able to enter the correct data, submit the form and see its data in the dialog window
    ...
    ...     *Owner:* Gislaine Menezes
    [Tags]      RF.01       QAEX-TA-002      PASSED
    [Setup]     Open Form
    [Teardown]      Close Form
    Input First Name ${input_firstName} with Maria
    Input Last Name ${input_lastName} with Santos
    Input email ${input_email} with maria@example.com
    Choose Gender_F
    Input Phone Number ${input_phone} with 0000000000
    Clear Date of Birth ${input_date_of_birth}
    Input Date of Birth    1980    April
    Input Subjects ${input_subjects} with Biology
    Choose Subjects Biology
    Input Subjects ${input_subjects} with Hindi
    Choose Subjects Hindi
    Input Subjects ${input_subjects} with Maths
    Choose Subjects Maths
    Scroll to Element    ${hobbies_sports}
    Wait Until Element Contains    ${hobbies_sports}    Sports    2
    Choose Hobbies_Sports
    Choose Hobbies_Reading
    Choose Hobbies_Music
    Attach File
    Input Adress ${fill_address} with Avenue, 1
    Scroll to Element    ${state_combobox}
    Choose State RAJASTHAN
    Scroll to Element    ${city_combobox}
    Choose City Jaipur
    Scroll to Element    ${submit}
    Submit
    Validation Success Scenario     Maria    Santos    0000000000    Avenue, 1


*** Test Cases ***

*** Comments ***
QAEX-TA-004 - Registration - Unsuccessful Registration due to invalid email
    [Documentation]     *Title:* QAEX-TA-004 - Registration - Unsuccessful Registration due to invalid email
    ...
    ...     *Description:* Check if the user is able to enter wrong data (email), submit the form and then the dialog window is not displayed
    ...
    ...     *Owner:* Gislaine Menezes
    [Tags]      RF.01       QAEX-TA-004      PASSED
    [Setup]     Open Form
    [Teardown]      Close Form
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


QAEX-TA-005 - Registration - Unsuccessful Registration due to invalid Date of Birth
    [Documentation]     *Title:* QAEX-TA-005 - Registration - Unsuccessful Registration due to invalid Date of Birth
    ...
    ...     *Description:* Check if the user is able to enter wrong data(Date of Birth), submit the form and then the dialog window is not displayed
    ...
    ...     *Owner:* Gislaine Menezes
    [Tags]      RF.01       QAEX-TA-005      FAILED     BUG-QAEX-001
    [Setup]     Open Form
    [Teardown]      Close Form
    Input First Name ${input_firstName} with João
    Input Last Name ${input_lastName} with Santos
    Input email ${input_email} with joao@example.com
    Choose Gender_M
    Input Phone Number ${input_phone} with 1234567890
    Clear Date of Birth ${input_date_of_birth}
    Input Date of Birth    2100    May
    Input Subjects ${input_subjects} with Arts
    Choose Subjects Arts
    Scroll to Element    ${hobbies_sports}
    Wait Until Element Contains    ${hobbies_sports}    Sports    2
    Choose Hobbies_Sports
    Attach File
    Input Adress ${fill_address} with Avenue, 2
    Scroll to Element    ${state_combobox}
    Choose State HARYANA
    Scroll to Element    ${city_combobox}
    Choose City Karnal
    Scroll to Element    ${submit}
    Submit
    Validation Unsuccessful Scenario



QAEX-TA-003 - Registration - Mandatory fields only
    [Documentation]     *Title:* QAEX-TA-003 - Registration - Mandatory fields only
    ...
    ...     *Description:*
    ...
    ...     *Owner:* Gislaine Menezes
    [Tags]      RF.01       QAEX-TA-003     PASSED
    [Setup]     Open Form
    [Teardown]      Close Form
    Input First Name ${input_firstName} with S
    Input Last Name ${input_lastName} with S
    Choose Gender_O
    Input Phone Number ${input_phone} with 9876543210
    Scroll to Element    ${submit}
    Submit
    Validation Success Scenario    S    S    9876543210    ${EMPTY}

