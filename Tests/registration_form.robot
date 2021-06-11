*** Settings ***
Resource        ../Resources/resource.robot
Resource        ../Resources/common.robot
Variables       ../Resources/variables.py
Suite Setup     Remove Old Results

*** Test Cases ***

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
    Input Date of Birth    ${input_date_of_birth}   1980    April
    Choose Subjects     ${input_subjects}   Arts    ${input_subjects_arts}
    Choose Hobbies      ${hobbies_sports}   Sports  2
    Attach File
    Input Adress ${fill_address} with Avenue, 1
    Choose State NCR
    Choose City Noida
    Submit
    Validation Success Scenario     João    Santos    9876543210    Avenue, 1

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
    Input Date of Birth   ${input_date_of_birth}     1980    April
    Choose Subjects    ${input_subjects}    Biology     ${input_subjects_biology}
    Choose Subjects    ${input_subjects}    Hindi       ${input_subjects_hindi}
    Choose Subjects    ${input_subjects}    Maths       ${input_subjects_maths}
    Choose Hobbies     ${hobbies_sports}    Sports      2
    Choose Hobbies     ${hobbies_reading}   Reading     2
    Choose Hobbies     ${hobbies_music}     Music       2
    Attach File
    Input Adress ${fill_address} with Avenue, 1
    Choose State RAJASTHAN
    Choose City Jaipur
    Submit
    Validation Success Scenario     Maria    Santos    0000000000    Avenue, 1

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
    Submit
    Validation Success Scenario    S    S    9876543210    ${EMPTY}

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
    Input Date of Birth  ${input_date_of_birth}  1980    April
    Choose Subjects     ${input_subjects}   Maths   ${input_subjects_maths}
    Choose Hobbies      ${hobbies_music}    Music   2
    Attach File
    Input Adress ${fill_address} with Avenue, 2
    Choose State HARYANA
    Choose City Karnal
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
    Input Date of Birth     ${input_date_of_birth}  2100    May
    Choose Subjects     ${input_subjects}   Arts    ${input_subjects_arts}
    Choose Hobbies      ${hobbies_sports}   Sports   2
    Attach File
    Input Adress ${fill_address} with Avenue, 2
    Choose State HARYANA
    Choose City Karnal
    Submit
    Validation Unsuccessful Scenario
