*** Settings ***
Library      REST

*** Keywords ***
Customer login
        [Documentation]    `is_jwt=true` will use with frontend only can't use on falcon api \n
        ...                `is_jwt=false` will use with falcon api only can't use on frontend \n
        ...                `is_jwt` should sent only string true or false. Not support ${TURE} or ${FALSE}
        [Arguments]    ${email}    ${password}
        ${username}=    Set Variable    ${email}
        ${password}=    Set Variable    ${password}
        ${request}=    Get Templated Data From Path    ${CURDIR}/account_managment/resources/login.json    return_type=json
        ${response_status}=    JSONLibrary.Get Value From Json    ${response}    $..reason
        [Return]    ${response}[0]

Get user Data invalid
        [Arguments]    ${userId}
        ${response}=    REST.Get   endpoint=https://reqres.in/api/unknown/${userId}
        ${response_status}=    JSONLibrary.Get Value From Json    ${response}    $..reason
        [Return]    ${response_status}[0]

Get user Data
        [Arguments]    ${userId}
        ${response}=    REST.Get   endpoint=https://reqres.in/api/2
        REST.Integer    response status    200
        ${response_data}=    JSONLibrary.Get Value From Json    ${response}    $..data[0].name
        [Return]    ${response_data}[0]

Update user Data
        [Arguments]    ${userId}    ${name}    ${job}
        ${request}=    Get Templated Data From Path    ${CURDIR}/account_managment/resources/updateUser.json    return_type=json
        ${body}=    Evaluate    json.dumps($request)    json
        ${response}=    REST.Put   endpoint=https://reqres.in/api/users/${userId}    body=${body}
        REST.Integer    response status    200
        # ${response}=    REST.Output    response body
        # ${response_json}=    Evaluate    json.dumps($response)    json
        ${response_status}=    JSONLibrary.Get Value From Json    ${response}    $..reason
        [Return]    ${response_status}[0]
