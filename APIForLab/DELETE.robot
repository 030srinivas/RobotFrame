*** Settings ***
Library     RequestsLibrary
Library     Collections
Resource    Context.robot

*** Variables ***

${ENDPOINT}     api/videogame
${id}       1

*** Test Cases ***
PUT Video Game
    create new session      delete
    ${response}=      DELETE On Session    delete    ${ENDPOINT}/${id}
    Log               ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log               ${response.text}
