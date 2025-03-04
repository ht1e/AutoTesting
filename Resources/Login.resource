*** Settings ***
Resource    Common.resource
Resource    ../Locators/LoginLocator.resource

***Keywords ***
Đăng nhập vào website
    [Arguments]    ${username}    ${password}
    Nhập tài khoản    ${username}
    Nhập mật khẩu     ${password}
    Nhấn vào phần tử    ${BUTTON_SUBMIT}


