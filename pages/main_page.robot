*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Keywords ***

Get Base URL
    [Arguments]    ${env}
    ${base_url}=    Set Variable    ${DEFAULT_BASE_URL}
    ${base_url}=    Run Keyword If    '${env}' == 'production'    Set Variable    ${BASE_URL_PRODUCTION}
    ...             ELSE IF    '${env}' == 'staging'    Set Variable    ${BASE_URL_STAGING}
    ...             ELSE IF    '${env}' == 'test1'    Set Variable    ${BASE_URL_TEST}
    Log  Retrieved Base URL: ${base_url}
    [Return]    ${base_url}

