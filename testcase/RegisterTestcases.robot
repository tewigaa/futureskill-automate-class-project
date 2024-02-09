*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/CommonRegisterKeywords.robot
Resource    ../keywords/RegisterPageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}    gc  


*** Test Cases ***
As a user, Register information
    When user register to future skill platform with ${email} and ${firstname} and ${lastname} and ${phone} and ${newPassword} and ${confirmPassword}
    Then future skill should display otp and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
