*** Settings ***
Resource        resource.txt
Variables       variables.py
Suite Setup     Open Form
Suite Teardown  SeleniumLibrary.Close Browser

*** Test Cases ***
*** Comments ***

AT-001 - Registration - Successfull Registration
    [Documentation]     *Title:* AT-001 - Registration - Successfull Registration
    Open Form
    Input First Name "${input_firstName}" with "João"
    Input Last Name "${input_lastName}" with "Santos"
    Choose Gender_M
    Input Phone Number "${input_phone}" with "9876543210"
    #Clear Date of Birth "${input_date_of_birth}"
    Input Date of Birth "${input_date_of_birth}" with "= 30 April 2021"
    State
    #SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Submit

*** Test Cases ***

AT-003 - Registration - Mandatory fields only
    [Documentation]     *Title:* AT-003 - Registration - Mandatory fields only
    Input First Name "${input_firstName}" with "S"
    Input Last Name "${input_lastName}" with "S"
    Choose Gender_O
    Input Phone Number "${input_phone}" with "9876543210"
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    #Scroll Element Into View    "${submit}"
    Submit

