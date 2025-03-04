*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login



*** Test Cases ***
    Openbrowser     ${URL}    ${BROWSER}
    FillInput    ${USERNAME}    ${PASSWORD}

*** Keywords ***
Openbrowser
    [Agruments]    ${weburl}    ${webbrowser}
    Open Browser    ${weburl}    ${webbrowser}
    Sleep 3s

FillInput
    [Agruments]    ${username}    ${password}
    Input Text    ${INPUT_USERNAME}    ${username}
    Input Text ${INPUT_PASSWORD}    ${password}
    Click Button    ${BUTTON_SUBMIT}

