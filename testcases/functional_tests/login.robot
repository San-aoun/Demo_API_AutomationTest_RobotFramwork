*** Settings ***
Resource    ${CURDIR}/../../imports/api_imports.robot

*** Test Cases ***
Verify that users cann't login when email or password are incorrect via api
    [Tags]    demo    regression
    Set Test Variable    ${email}    ${authentication.email}
    Set Test Variable    ${password}    ${authentication.incorrect_password}
    # login.Verify customer login then status should be unauthorized    ${email}    ${password}
