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

Close Form
    Capture Page Screenshot     #Refactor: Take Screenshot fullPage (dialog) ou outra forma
    Stop Video Recording
    SeleniumLibrary.Close Browser