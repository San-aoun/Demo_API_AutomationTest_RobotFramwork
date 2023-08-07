*** Keywords ***
Verify update user then can update user with 201 created
    [Arguments]    ${userId}    ${name}    ${job}
    ${response}=    account_management.Update user Data  ${userId}    ${name}    ${job}
    BuiltIn.Should Be Equal    ${response}    OK
