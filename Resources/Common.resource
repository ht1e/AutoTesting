*** Settings ***
Library    SeleniumLibrary

#Locators
Resource     ../Locators/LoginLocator.resource
Resource     ../Locators/AdminLocator.resource

#Resorces
Resource     Login.resource

#Variables
Variables     ../data/uat/login.yaml
Variables     ../data/uat/webinfo.yaml


*** Variables ***
&{GLOBAL_TIMEOUT}       XXS=2s    XS=5s    S=10s    M=30s    L=60s    XL=120s    XXL=240s

*** Keywords ***
Mở trình duyệt và truy cập trang web
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Log console and ui
    [Arguments]    ${message}
    Log    ${message}    ${console}=${true}

Nhập tài khoản
    [Arguments]    ${username}
    Chờ đến khi trang có phần tử    ${INPUT_USERNAME}
    Chờ phần tử hiển thị    ${INPUT_USERNAME}
    Input Text     ${INPUT_USERNAME}    ${username}
Nhập mật khẩu
    [Arguments]    ${password}
    Chờ đến khi trang có phần tử    ${INPUT_PASSWORD}
    Chờ phần tử hiển thị    ${INPUT_PASSWORD}
    Input Password    ${INPUT_PASSWORD}    ${password}
Chờ đến khi trang có phần tử
    [Arguments]    ${locator}    ${timeout}=${GLOBAL_TIMEOUT.S}
    Wait Until Element Is Visible    ${locator}    ${timeout}
Chờ phần tử hiển thị
    [Arguments]    ${locator}    ${timeout}=${GLOBAL_TIMEOUT.S}
    Wait Until Element Is Visible    ${locator}    ${timeout}
Nhấn vào phần tử
    [Arguments]    ${locator}
    Chờ phần tử hiển thị    ${locator}
    Click Element    ${locator}




