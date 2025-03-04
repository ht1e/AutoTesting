*** Settings ***
Resource     ../Resources/Login.resource

*** Test Cases ***
Đăng nhập vào hệ thống
    Mở trình duyệt và truy cập trang web    &{WEBINFO}
    Đăng nhập vào website    &{ADMIN}    
