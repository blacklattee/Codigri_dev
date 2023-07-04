*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s
${TextLoginAccount}         xpath=//div[@id='__next']/div/div/div/section/div/h2 
${WelcomeBack}              xpath=//div[@id='__next']/div/div/div/section/div[2]/div 
${text_email}               id=mui-1  
${email}                    id=mui-1
${text_pass}                id=mui-2
${password}                 id=mui-2
${invalid_password}         id=mui-2
${button_login}             xpath=//div[@id='__next']/div/div/div/section/div[5]/button
${text_password_success}    xpath=//div[@id='__next']/div/div/div/div/h1
${text_password_change}     xpath=//div[@id='__next']/div/div/div/div/p
${button_home_popup}        xpath=//button[@type='button']
*** Test Cases ***
Login_User
    Open Browser  https://bo.erp.yumi.live/login  ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Element Should Contain    ${TextLoginAccount}   Login Account
    Element Should Contain    ${WelcomeBack}        Welcome back! Please enter your detail.
    Input Text                ${email}              rabilfernanda@gmail.com
    Input Password            ${password}           rabil123 
    Click Button              ${button_login}
    Wait Until Element Contains    ${text_password_success}    Setup Password Success!
    Wait Until Element Contains    ${text_password_change}     Password changed successfully, return to homepage to login.
    Click Button    ${button_home_popup}
    Sleep    5s
    [Teardown]  Close Browser