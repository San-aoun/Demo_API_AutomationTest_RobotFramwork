*** Settings ***
Resource    ${CURDIR}/../../imports/api_imports.robot

*** Test Cases ***
Get user - Validate user Id
    [Tags]    demo    getuser
    Set Test Variable    ${id}    ${userdata.userId}
    Set Test Variable    ${email}    ${userdata.email}
    Set Test Variable    ${firstname}    ${userdata.first_name}
    Set Test Variable    ${lastname}    ${userdata.last_name}
    # getSingleUser.Verify get single user then can get user with 200 OK    ${id}   ${email}    ${firstname}   ${lastname}

Get user - Invalidate user Id
    [Tags]    demo    getuser
    Set Test Variable    ${id}    ${userdata.userId}
    # getSingleUser.Verify get emtry user then response single user 404 not found    ${id}