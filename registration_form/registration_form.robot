*** Settings ***
Resource   resources.txt

*** Test Case ***
Scenario 3
    User is in Student Registration Form
    When user fill the field "first name" with "S"
    And user fill the field "mobile phone" with "9876543210"
    And user click in Submit
    Then System should open the success dialog
