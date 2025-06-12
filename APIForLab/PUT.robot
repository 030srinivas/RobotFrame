*** Settings ***
Library     RequestsLibrary
Library     Collections
Resource    Context.robot

*** Variables ***

${ENDPOINT}     api/videogame
${id}       1

*** Test Cases ***
PUT Update Video Game
    create new session      videogame
    &{body}=          Create Dictionary
    ...    category=Platform
    ...    name=Ghost reckon
    ...    rating=Mature
    ...    releaseDate=2012-05-04
    ...    reviewScore=85
    ${response}=      PUT On Session    videogame    ${ENDPOINT}/${id}    json=${body}
    Log               ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log               ${response.text}
