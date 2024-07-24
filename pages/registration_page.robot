*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Variables ***
# All variables present in variable file

*** Keywords ***
Fill Registration Form
    [Arguments]    ${email}    ${first_name}    ${last_name}
    Wait Until Element Is Visible    ${EMAIL_INPUT}    10s
    Input Text    ${EMAIL_INPUT}    ${email}
    Wait Until Element Is Visible    ${FIRST_NAME_INPUT}    10s
    Input Text    ${FIRST_NAME_INPUT}    ${first_name}
    Wait Until Element Is Visible    ${LAST_NAME_INPUT}    10s
    Input Text    ${LAST_NAME_INPUT}    ${last_name}
    Wait Until Element Is Visible    ${SUBMIT_BTN_REGISTRATION}    10s

Submit Registration Form
    Click Element    ${SUBMIT_BTN_REGISTRATION}
