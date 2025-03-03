*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://google.com

*** Test Cases ***
Open Google and Search
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2s
    Input Text    name=q    Robot Framework
    Press Keys    name=q    ENTER
    Sleep    3s
    Close Browser