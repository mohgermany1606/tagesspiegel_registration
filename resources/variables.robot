*** Variables ***
# Base URL
${BASE_URL}         https://www.tagesspiegel.de


# WebDriver Settings
${BROWSER}          chrome

# Email Credentials
${LOGIN_SUCCESS_HEADLINE}    xpath=//h3[@class='tab__headline' and text()='Benutzerkonto']

# Registration Details
 
${FIRST_NAME}   Mohini
${LAST_NAME}    Gupta



# Page Elements

#Login Button Elements
${LOGIN_BUTTON}        xpath=//a[@href='https://mein.tagesspiegel.de' and @class='menu__profile' and @title='Melden Sie sich mit Ihrem Tagesspiegel-Konto an']
${REGISTER_TAB}        xpath=//button[@data-nav-item='register' and .//span[text()='Registrieren']]
${MODAL_FRAME}         xpath=//iframe[contains(@id, 'modal-iframe')]
${ACCEPT_BTN_HOME}          xpath=//*[@id="notice"]/div[3]/div[1]/div/button


#Registration Page Elements
${EMAIL_INPUT}        id=forms/formRegistration_email
${FIRST_NAME_INPUT}   id=forms/formRegistration_forename
${LAST_NAME_INPUT}    id=forms/formRegistration_surname
${SUBMIT_BTN_REGISTRATION}      xpath=//button[@type='submit' and @value='Jetzt registrieren']

#Password Set Page Elements
${ACCEPT_BTN_PWD}      xpath=//*[@id="notice"]/div[2]/div/div[3]/button[2]
${PASSWORD_INPUT}        id=forms/formSetPassword_password
${CONFIRMPASSWORD_INPUT}   id=forms/formSetPassword_password_confirmation
${SUBMIT_BTN_SET_PASSWORD}    xpath=//button[@type='submit' and @value='Speichern']

#Emails Elements
${GMAIL_ID}       tagesspiegel102automation@gmail.com
${GMAIL_PASSWORD}       vdav fuct rdli qmgg
${SUBJECT}    Herzlich Willkommen beim Tagesspiegel - Jetzt Passwort vergeben!
${TEMP_HTML_FILE}  ${CURDIR}/temp_file.html
${BUTTON_SET_PASSWORD}    //a[contains(text(), 'Jetzt Passwort festlegen')]








