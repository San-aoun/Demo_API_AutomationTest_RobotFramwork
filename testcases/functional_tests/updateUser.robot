*** Settings ***
Resource    ${CURDIR}/../../imports/api_imports.robot

*** Test Cases ***
Verify that can update user
    [Tags]    demo    regression
    Set Test Variable    ${email}    ${authentication.email}
    Set Test Variable    ${password}    ${authentication.incorrect_password}