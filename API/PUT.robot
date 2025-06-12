*** Settings ***
Library     RequestsLibrary
*** Variables ***
${base_url}     http://reqres.in/
${Servicename}      api/users/2
*** Test Cases ***
Verify Post request
    RequestsLibrary.Create Session    baseURI       ${base_url}     verify=True
    &{headers}=     Create Dictionary       x-api-key=reqres-free-v1
    ${response}=        Delete On Session        baseURI    ${Servicename}     headers=${headers}
    Log     ${response}
    Log     ${response.status_code}