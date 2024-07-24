*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Variables ***
 # All variables present in variable file

*** Keywords ***
Click Accept button
    [Documentation]  Clicks the accept button on Login cookie window
    Click Element  ${ACCEPT_BTN_HOME}
    Sleep  2s  # Wait for the modal to load


Click Accept button on Password Screen
   [Documentation]  Clicks the accept button on Password Set cookie window
    Click Element  ${ACCEPT_BTN_PWD}
    Sleep  2s  # Wait for the modal to load
    

Open Login Modal
    [Documentation]    Clicks the login button to open the login modal
    Click Element  ${LOGIN_BUTTON}
    Sleep    4s  # Wait for the modal to load

Switch To Modal on Password Screen
    [Documentation]    Switches to the modal iframe if present on password set screen
    Wait Until Element Is Visible    ${MODAL_FRAME}    10s
    Select Frame  ${MODAL_FRAME}


Switch To Modal
    [Documentation]    Switches to the modal iframe if present
    Wait Until Element Is Visible    ${MODAL_FRAME}    10s
    Select Frame  ${MODAL_FRAME}

Select Register Tab
    [Documentation]    Selects the 'Registrieren' tab in the login modal
    Wait Until Element Is Visible    ${REGISTER_TAB}    10s
    Click Element  ${REGISTER_TAB}

