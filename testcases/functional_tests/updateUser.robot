*** Settings ***
Resource    ${CURDIR}/../../imports/api_imports.robot

*** Test Cases ***
Update User - Valid User ID
    [Tags]    demo    updateUser
    Set Test Variable    ${name}    ${updatedata.name}
    Set Test Variable    ${job}    ${updatedata.job}
    Set Test Variable    ${id}    ${userdata.userId}
    # updateUser.Verify update user then can update user with 201 created    ${id}   ${name}    ${job}