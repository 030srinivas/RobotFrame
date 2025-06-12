*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://videogamedb.uk/
${ENDPOINT}     api/videogame

*** Test Cases ***
Get request example
    Create Session    jsonlaceholder    ${BASE_URL}    verify=False
    &{headers}=       Create Dictionary    Accept=application/json
    ${response}=      GET On Session    jsonlaceholder    ${ENDPOINT}    headers=${headers}
    Log               ${response.status_code}
    Log               ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    200
