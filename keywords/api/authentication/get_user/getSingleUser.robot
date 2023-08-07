*** Keywords ***
Verify get single user then can get user with 200 OK
    [Arguments]    ${userId}   ${email}    ${first_name}   ${last_name}
    ${response}=    account_management.Get user Data    ${userId}
    BuiltIn.Should Be Equal    ${response}   	cerulean

Verify get emtry user then response single user 404 not found
    [Arguments]    ${userId}
    ${response}=    account_management.Get user Data invalid    ${userId}
    BuiltIn.Should Be Equal    ${response}   	Not Found
