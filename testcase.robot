*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}   Admin
${PASSWORD}   admin123
${INPUT_USERNAME}    //input[@name="username"]
${INPUT_PASSWORD}    //input[@name="password"]
${BUTTON_SUBMIT}     //button[@type="submit"]

*** Test Cases ***
Mở trình duyệt và đăng nhập thành công
    Open Browser    ${URL}    ${BROWSER}
    Sleep    5s
    Input Text    ${INPUT_USERNAME}    ${USERNAME}
    Input Text    ${INPUT_PASSWORD}    ${PASSWORD}
    Click Element    ${BUTTON_SUBMIT}
