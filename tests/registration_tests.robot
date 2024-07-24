*** Settings ***
Library    SeleniumLibrary
Library    ImapLibrary
Resource    ../resources/Variables.robot
Resource    ../pages/login_page.robot
Resource    ../pages/registration_page.robot
Resource    ../pages/email_page.robot


*** Test Case ***
Verify Registration Process
    [Documentation]    Verify the registration process on tagesspiegel.de website
    SeleniumLibrary.Open Browser    ${BASE_URL}    ${BROWSER} 
    Maximize Browser Window
    Sleep    3s  # Wait for the modal to load
    
    Select Frame  xpath://iframe[contains(@title, 'Iframe title')]
    
    # Clicks the accept button on Login cookie window
    Click Accept Button
    Log  Button Clicked
    Unselect Frame    

    # Click on Login button and switch to modal
    Open Login Modal
    Switch to Modal
    # Select Register tab and fill required details
    Select Register Tab
    Fill Registration Form    ${GMAIL_ID}    ${FIRST_NAME}    ${LAST_NAME}    
    Submit Registration Form
    Sleep   2s

    # Authorize gmail id using Gmail ID and Password for which ImapSmtp library is used
    Authorize  account=${GMAIL_ID}  password=${GMAIL_PASSWORD}
    Lets Read Emails

     # Verification step: Check for Vorname that is only present after successful login
    Wait Until Element Is Visible    ${LOGIN_SUCCESS_HEADLINE}    timeout=10s
    Element Should Be Visible    ${LOGIN_SUCCESS_HEADLINE}
    Log   User is logged in
    [Teardown]    Close Browser
    
