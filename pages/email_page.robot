*** Settings ***
Library     RPA.Email.ImapSmtp   smtp_server=smtp.gmail.com  smtp_port=587
#Task Setup  Authorize  account=${GMAIL_ACCOUNT}  password=${GMAIL_PASSWORD}
Library    SeleniumLibrary
Library    OperatingSystem
Resource   password_set.robot
Library     String
Resource   login_page.robot



*** Keywords ***
Create Temporary HTML File
    [Arguments]    ${content}    ${file_path}
    Create File    ${file_path}    ${content}
    Log    HTML file created at ${file_path}

Lets Read Emails
    @{messages}    List Messages  SUBJECT "${SUBJECT}"
    Log  @{messages}
    FOR    ${message}    IN    @{messages}
            Log    Message: ${message}[Message]
            Log    Body: ${message}[Body]
            Log    UID: ${message}[Mail-Id]
    END

    Create Temporary HTML File    ${message}[Body]   ${TEMP_HTML_FILE}
    Log  html file created
    # Open the temporary HTML file in a browser
    Open Browser    file://${TEMP_HTML_FILE}    chrome
    Maximize Browser Window
    Log  opened browser
    # Click the verification link present in email
    Click Element    ${BUTTON_SET_PASSWORD}
    Log  element clicked
    # Optionally wait for some time
    Sleep    2s
    Select Frame  xpath://iframe[contains(@title, 'SP Consent Message')]
    Log  Iframe found

    #Click Accept button on cookies window
    Click Accept button on Password Screen
    Log  Button found
    Unselect Frame

    #Fill Password and confirm password present on password set screen
    Fill Password Form    Welcome@02    Welcome@02

    #Click Submit button present on password set screen
    Submit Password Form