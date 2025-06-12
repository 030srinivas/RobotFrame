*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://videogamedb.uk:443/
${Servicename}     api/v2/videogame
${sample_json}      { "category": "Platform", "name": "Mario", "rating": "Mature", "releaseDate": "2012-05-04","reviewScore": 85}
${body}
${headers}
${response}

*** Test Cases ***
Post request example
        RequestsLibrary.Create Session      baseURI     ${base_url}        verify=False
        ${body}=        Create Dictionary   category=Platform       name=Mario      rating=Mature       releaseDate=2012-05-04      reviewScore=85
        ${headers}=       Create Dictionary       content-type=application/json

        ${response}=        POST On Session      baseURI      ${Servicename}        json=${body}        headers=${headers}
        Log     ${response}
        Log     ${response.status_code}