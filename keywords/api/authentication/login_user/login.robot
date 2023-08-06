*** Keywords ***
Verify customer login then status should be unauthorized
    [Arguments]    ${email}    ${password}
    ${response}=    account_management.Customer login    ${email}    ${password}    false
    ${login_failed_status}=    JSONLibrary.Get Value From Json    ${response}    $..errors[0].message
    BuiltIn.Should Be Equal    ${login_failed_status}[0]    Missing password
