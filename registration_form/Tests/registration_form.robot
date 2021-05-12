*** Settings ***
Resource        resource.robot
Variables       variables.py
Suite Setup     Open Form
Suite Teardown  SeleniumLibrary.Close Browser

*** Test Cases ***


AT-001 - Registration - Successfull Registration
    [Documentation]     *Title:* AT-001 - Registration - Successfull Registration
    Input First Name ${input_firstName} with João
    Input Last Name ${input_lastName} with Santos
    Choose Gender_M
    Input Phone Number ${input_phone} with 9876543210
    #Clear Date of Birth ${input_date_of_birth}
    #Input Date of Birth    1980    April
    Input Subjects ${input_subjects} with Arts
    Choose Subjects Arts
    Scroll to Element    ${hobbies_sports}
    Wait Until Element Contains    ${hobbies_sports}    Sports    2
    Choose Hobbies_Sports
    Attach File
    State
    #SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll to Element    ${submit}
    Submit

*** Test Cases ***

*** Comments ***

AT-003 - Registration - Mandatory fields only
    [Documentation]     *Title:* AT-003 - Registration - Mandatory fields only
    Input First Name ${input_firstName} with S
    Input Last Name ${input_lastName} with S
    Choose Gender_O
    Input Phone Number ${input_phone} with 9876543210
    Scroll to Element    ${submit}
    Submit
    Capture Page Screenshot

