*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Variables ***
 # All Variables present in Variable file

*** Keywords ***
Fill Password Form
    [Arguments]    ${password}    ${confirm_password}
    Wait Until Element Is Visible    ${PASSWORD_INPUT}    10s
    Input Text    ${PASSWORD_INPUT}    ${password}
    Wait Until Element Is Visible    ${CONFIRMPASSWORD_INPUT}    10s
    Input Text    ${CONFIRMPASSWORD_INPUT}    ${confirm_password}
    Wait Until Element Is Visible    ${SUBMIT_BTN_SET_PASSWORD}    10s

Submit Password Form
    Click Element    ${SUBMIT_BTN_SET_PASSWORD}
