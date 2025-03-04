*** Settings ***
Resource    Common.resource
Resource    ../Locators/LoginLocator.resource

***Keywords ***
Đăng nhập vào website
    [Arguments]    ${username}    ${password}
    Nhập tài khoản    ${username}
    Nhập mật khẩu     ${password}
    Nhấn vào phần tử    ${BUTTON_SUBMIT}
    Chờ đến khi trang có phần tử    ${Navigation}
    Chờ phần tử hiển thị    ${Navigation}
    BuiltIn.Sleep    3s
    Close Browser

