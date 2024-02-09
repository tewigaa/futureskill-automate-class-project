*** Settings ***
Library    SeleniumLibrary
Resource    CommonRegisterKeywords.robot

*** Keywords ***
user register to future skill platform with ${email} and ${firstname} and ${lastname} and ${phone} and ${newPassword} and ${confirmPassword}
    CommonRegisterKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    CommonRegisterKeywords.Wait until element is ready then input text    name=email    ${email}
    CommonRegisterKeywords.Wait until element is ready then input text    name=firstName    ${firstname}
    CommonRegisterKeywords.Wait until element is ready then input text    name=lastName     ${lastname}
    CommonRegisterKeywords.Wait until element is ready then input text    name=phoneNumber    ${phone}
    CommonRegisterKeywords.Wait until element is ready then input text    name=newPassword    ${newPassword}  
    CommonRegisterKeywords.Wait until element is ready then input text    name=confirmPassword    ${confirmPassword} 
    CommonRegisterKeywords.Wait until element is ready then click element    xpath=//input[@name="consent"]
    CommonRegisterKeywords.Wait until element is ready then click element    xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display otp and display message as "${expected_message}"
    CommonRegisterKeywords.Wait until page contains element then verify text    ${expected_message}