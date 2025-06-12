*** Settings ***

Library    RequestsLibrary

Library    Collections

*** Variables ***

${base_url}             https://videogamedb.uk

${auth_endpoint}        /api/authenticate

${username}             admin

${password}            admin


*** Keywords ***

create new session

    [Arguments]    ${alias}

    ${auth_payload}=    Create Dictionary    username=${username}    password=${password}

    Create Session    auth_session    ${base_url}    headers=    verify=False

    ${headers}=    Create Dictionary    Content-Type=application/json

    ${auth_response}=    POST On Session    auth_session    ${auth_endpoint}    json=${auth_payload}    headers=${headers}

    Should Be Equal As Integers    ${auth_response.status_code}    200

    ${token}=    Get From Dictionary    ${auth_response.json()}    token

    Log To Console    ${token}

    &{headers}=    Create Dictionary    Content-Type=application/json    Authorization=Bearer ${token}
    Create Session    ${alias}    ${base_url}    headers=${headers}    verify=False

