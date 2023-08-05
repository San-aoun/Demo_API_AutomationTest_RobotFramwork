*** Settings ***
Library      REST


*** Keywords ***
Customer login
    [Documentation]    `is_jwt=true` will use with frontend only can't use on falcon api \n
    ...                `is_jwt=false` will use with falcon api only can't use on frontend \n
    ...                `is_jwt` should sent only string true or false. Not support ${TURE} or ${FALSE}
    [Arguments]    ${email}    ${password}    ${is_jwt}=true    ${guest_token}=${EMPTY}
    ${username}=    Set Variable    ${email}
    ${password}=    Set Variable    ${password}
    ${is_jwt}=    Set Variable    ${is_jwt}
    ${guest_token}=    Set Variable    ${guest_token}
    ${request}=    Get Templated Data From Path    ${CURDIR}/account_managment/resources/login.json    return_type=json
    ${body}=    Evaluate    json.dumps($request)    json
    ${response}=    REST.Post   endpoint=https://reqres.in/api/login    body=${body}
    REST.Integer    response status    200
    ${response}=    REST.Output    response body
    [Return]    ${response}

Get user Data

Delete user Data

Update user Data