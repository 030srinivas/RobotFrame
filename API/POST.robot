*** Settings ***
Library     RequestsLibrary
Library    String

*** Variables ***
${BASE_URL}     https://reqres.in/
${Servicename}     api/users
${sample_json}         {"name": "morpheus","job": "leader"}
&{BODY}
&{HEADERS}
&{response}


*** Test Cases ***
Get request example
    RequestsLibrary.Create Session  baseURI     ${BASE_URL}     verify=TRUE
    &{BODY}=        Create Dictionary   name=morpheus job=leader
    &{HEADERS}=     Create Dictionary       Content-type=application/json
    &{HEADERS}=     Create Dictionary       x-api-key=reqres-free-v1
    ${response}=        POST On Session      baseURI      ${Servicename}     json=${BODY}        headers=${HEADERS}
    Log    ${response}
    Log    ${response.status_code}