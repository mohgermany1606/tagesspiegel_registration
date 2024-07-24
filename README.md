# Tagesspiegel Registration Automation

This project automates the registration process on the Tagesspiegel website using Robot Framework and follows the Page Object Model (POM) principles. The test can be run in different environments by passing an ENV parameter

## Libraries Used

1. **SeleniumLibrary: For browser automation.**
2. **ImapLibrary: For email handling.**

## Prerequisites

- Python 3.x
- pip (Python package installer)
- Robot Framework
- SeleniumLibrary for Robot Framework
- Web driver (e.g., ChromeDriver) installed and added to PATH
- Gmail account setup with two-factor authentication, app password, and IMAP enabled

### Setting up Gmail Account

1. **Open your Google Account:**
   - Go to mail.google.com and setup any random gmail id
   - Login with Gmail ID and password and click on Goggle account
   
2. **Enable Two-Factor Authentication (2FA):**
   - In the navigation panel, select **Security**.
   - Under "How you sign in to Google," select **2-Step Verification** and then click **Get started**.
   - Follow the prompts to add your phone number:
     - Click **Add phone number**.
     - Enter your phone number, select **Text**, and click **Next**.
     - Enter the verification code sent to your phone and click **Verify**.
     - Click **Turn on**.
     - You may need to click **Turn on** again until you receive the message ‘You are protected on…’.

3. **Set an App Password:**
   - Go back to the **Security** section.
   - Under "Signing in to Google," select **App passwords**. [App passwords](https://myaccount.google.com/apppasswords?pli=1&rapt=AEjHL4MN09rKkcTMyZtzJqhIAT-07fOUtz-09Ilj6jDzLvBWcuhETUKK3uqePBuRRzFCrFm2OqDMEuJ3z_4ldVa-0-AN-wU4u0Fia_Gmm7i9d_f8I_xk_ZI)
   - Enter your Google account password if prompted.
   - In the "Select app" dropdown, choose **Other (Custom name)** and enter a name for the app (e.g., "Robot Framework").
   - Click **Generate**.
   - Copy the generated password (e.g., `vdav fuct rdli qmgg`) and click **Done**.
   - Paste this appkey in ${GMAIL_PASSWORD} variable present in variables.robot

4. **Enable IMAP in Gmail Settings:**
   - Go to [Gmail Settings](https://mail.google.com/).
   - Click the **Settings** gear icon and select **See all settings**.
   - Go to the **Forwarding and POP/IMAP** tab.
   - Under "IMAP Access," select **Enable IMAP**.
   - Click **Save Changes**.
   - If prompted, enter your phone number for verification and enter the verification code sent to your phone (e.g., `408092`).

## Installation

1. Clone this repository to your local machine:
   ```sh
   git clone <repository-url>
   cd <repository-directory>

2. Install the required Python packages:
- pip install robotframework
- pip install robotframework-seleniumlibrary
- pip install robotframework-imaplibrary or pip3 install robotframework-imaplibrary
  
Ensure you have the appropriate web driver installed (e.g., ChromeDriver for Chrome):

4. Download ChromeDriver
Add ChromeDriver to your PATH


**Directory Structure -**

**tests** : Contains the test cases.

**pages** : Contains the page object files.

**resources** : Contains resource files like variables and custom keywords.

**Run Test -**
You can run this using robot registration_tests.robot


**Test Case**

The test case verifies the registration process on the Tagesspiegel website with the following steps:

- Open the Tagesspiegel website based on the environment.
- Click the ‘Anmelden’ link in the header.
- Choose the ‘Registrieren’ tab in the login modal.
- Fill in data: random email, first name, and last name.
- Submit the registration form.
- Get the registration link from email (fake implementation for demo).
- Open the registration link on the website.
- Provide passwords.
- Submit the password form.
- Verify the user is logged in.

## Files
**tests/registration_test.robot**
Contains the main test case and high-level keywords.

**resources/variables.robot**
Defines variables and utility keywords.

**pages/login_page.robot**
Defined elements and keywords for interaction on home page and login form

**pages/registration_page.robot**
Defines elements and keywords for interactions on the registration page.

**pages/password_set.robot**
Defines elements and keywords for interactions on set password page 

**pages/email_page.robot**
Defines element and keywords for interactions on gmail'

**pages/main_page.robot**
Defines specific keyword for different browser URL

## Run Test Framework

robot --variable ENV:production registration_tests.robot

## Notes
- Ensure the email address provided has IMAP enabled and an app key generated for it to be used in the tests.
- If you encounter any issues or have any questions, please feel free to reach out.




