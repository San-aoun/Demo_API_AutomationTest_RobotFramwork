*** Keywords ***
Verify update user then can update user with 201 created
    [Arguments]    ${userId}    ${name}    ${job}
    ${response}=    account_management.Update user Data  ${userId}    ${name}    ${job}
    BuiltIn.Should Be Equal    ${response.status_code}    201
    ${updated_user}    Set Variable    ${response.json()}
    BuiltIn.Should Be Equal    ${updated_user.get("name")}    ${name}
    BuiltIn.Should Be Equal    ${updated_user.get("job")}    ${job}