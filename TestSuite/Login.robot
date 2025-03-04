*** Settings ***
Resource     ../Resources/Login.resource

*** Test Cases ***
Đăng nhập vào hệ thống thành công
    Mở trình duyệt và truy cập trang web    &{WEBINFO}
    Đăng nhập vào website    &{ADMIN}
    Chờ đến khi trang có phần tử    ${Navigation}
    Chờ phần tử hiển thị    ${Navigation}
    BuiltIn.Sleep    5s
    Close Browser
Đăng nhập NOUSER
    Mở trình duyệt và truy cập trang web    &{WEBINFO}
    Đăng nhập vào website    &{NOUSER}
    Chờ đến khi trang có phần tử    ${USERNAME_WRONG}
    Chờ phần tử hiển thị    ${USERNAME_WRONG}
    BuiltIn.Sleep    5s
    Close Browser
Đăng nhập NOPASS
    Mở trình duyệt và truy cập trang web    &{WEBINFO}
    Đăng nhập vào website    &{NOPASS}
    Chờ đến khi trang có phần tử    ${PASSWORD_WRONG}
    Chờ phần tử hiển thị    ${PASSWORD_WRONG}
    BuiltIn.Sleep    5s
    Close Browser
Đăng nhập WRONGUSER
    Mở trình duyệt và truy cập trang web    &{WEBINFO}
    Đăng nhập vào website    &{WRONGUSER}
    Chờ đến khi trang có phần tử    ${INVALID}
    Chờ phần tử hiển thị    ${INVALID}
    BuiltIn.Sleep    5s
    Close Browser
Đăng nhập WRONGPASS
    Mở trình duyệt và truy cập trang web    &{WEBINFO}
    Đăng nhập vào website    &{WRONGPASS} 
    Chờ đến khi trang có phần tử    ${INVALID}
    Chờ phần tử hiển thị    ${INVALID}
    BuiltIn.Sleep    5s
    Close Browser
   
