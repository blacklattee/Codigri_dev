*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s
${WelcomeBack}              xpath=//div[@id='__next']/div/div/div/section/div[2]/div 
${email}                    id=mui-1
${password}                 id=mui-2
${invalid_password}         id=mui-2
${button_login}            xpath=//div[@id='__next']/div/div/div[1]/section/div[6]/button[@type='button']
${button_home_popup}       xpath=//button[@type='button']
${username_management}     xpath=//*[@id="panel1a-content"]/div/a[1]
${panel_admin}             xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1ewveix']/div/div[1]/div[4]/div/div[@role='button']/div[@class='MuiAccordionSummary-content MuiAccordionSummary-contentGutters css-17o5nyn']
${list_office}             xpath=//div[@id='menu-']//ul[@role='listbox']/li[1]


#============================== Wait Until Element ==================================================
${text_email_required}     xpath=/html//div[@id='__next']/div/div/div[1]/section//p[.='Email is required']
${text_password_required}  xpath=/html//div[@id='__next']/div/div/div[1]/section//p[.='password must be at least 8 characters']
${text_phone_number}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Phone Number']
${text_user_management}    xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1ewveix']/div/div[1]/div[4]/div/div[2]//div[@role='region']//a[@href='/admin/user']
${text_create_user}        xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']//span[@class='MuiTypography-root MuiTypography-xxxlSemiBold css-1ird22q']
${text_password_change}    xpath=//div[@id='__next']/div/div/div/div/p
${text_password_success}   xpath=//div[@id='__next']/div/div/div/div/h1
${text_pass}               id=mui-2
${text_first_login}        xpath=/html//div[@id='__next']/div//h1[.='Setup your password!']
${text_email}              id=mui-1  
${text_edit_user}          xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']//table[@class='MuiTable-root css-1b8n3j0']/tbody/tr[1]/td[6]/button[@type='button']
${TextLoginAccount}        xpath=//div[@id='__next']/div/div/div/section/div/h2 
${text_full_name}          xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Full Name']
${text_employeeid}         xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Employee ID']
${text_user_list}          xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//span[.='User List']
${teks_email}              xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Email']
#================================ Inputan & Button & Dropdown ====================================================
${input_full_name}         xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[1]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_employee_id}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[2]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_first_login_password}   xpath=/html//div[@id='__next']/div//section/div[1]/div/input
${re_input_first_login_password}  xpath=/html//div[@id='__next']/div//section/div[2]/div/input
${input_email_address}     xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[3]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_phone_number}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[4]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${button_create_user}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//button[@type='button']
${button_edit_user}        xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']//table[@class='MuiTable-root css-1b8n3j0']/tbody/tr[1]/td[6]/button[@type='button']
${drop_down_office}        xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[5]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div[@role='button']
#=====================================================================================================

*** Test Cases ***
Login_User
    Open Browser  https://bo.erp.yumi.live/login  ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Element Should Contain    ${TextLoginAccount}          Login Account
    Element Should Contain    ${WelcomeBack}               Welcome back! Please enter your detail.
    Input Text                ${email}                     rabilfernandaaa@gmail.com
    Input Password            ${invalid_password}          12345678
    Click Button              ${button_login}
Input Password Setup
    Element Should Contain    ${text_first_login}          Setup your password!    
    Click Element             ${input_first_login_password}    
    #Input Password            ${input_first_login_password} \
    #Input Password            ${re_input_first_login_password}    \
    #Element Text Should Be    ${text_email_required}       Email is required
    #Element Text Should Be    ${text_password_required}    password must be at least 8 characters
    Sleep    5s

    [Teardown]  Close Browser
