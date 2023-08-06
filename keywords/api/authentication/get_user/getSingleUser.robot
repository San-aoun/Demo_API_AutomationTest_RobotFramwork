*** Keywords ***
Verify get single user then can get user with 200 OK
    [Arguments]    ${userId}   ${email}    ${first_name}   ${last_name}
    ${response}=    account_management.Get user Data    ${userId}
    BuiltIn.Should Be Equal    ${response.status_code}    200
    ${get_user}    Set Variable    ${response.json()}
    BuiltIn.Should Be Equal    ${get_user.get("id")}    ${userId}
    BuiltIn.Should Be Equal    ${get_user.get("email")}    ${email}
    BuiltIn.Should Be Equal    ${get_user.get("first_name")}    ${first_name}
    BuiltIn.Should Be Equal    ${get_user.get("last_name")}    ${last_name}

Verify get emtry user then response single user 404 not found
    [Arguments]    ${userId}
        ${response}=    account_management.Get user Data    ${userId}
    BuiltIn.Should Be Equal    ${response.status_code}    404