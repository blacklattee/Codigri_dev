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
${company_management}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1ewveix']/div/div[1]/div[4]/div/div[2]//div[@role='region']//a[@href='/admin/company']
${panel_admin}             xpath=//div[@id='panel1a-header']/div[@class='MuiAccordionSummary-content MuiAccordionSummary-contentGutters css-17o5nyn']
${list_office}             xpath=//div[@id='menu-']//ul[@role='listbox']/li[1]


#============================== Wait Until Element ==================================================
${text_phone_number}        xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Phone Number']
${text_user_management}     xpath=//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']//h3[.='User Management']
${text_company_management}  xpath=//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']//h3[.='Company Management']
${text_create_user}         xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']//span[@class='MuiTypography-root MuiTypography-xxxlSemiBold css-1ird22q']
${text_create_company}      xpath=//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']//span[@class='MuiTypography-root MuiTypography-xxxlSemiBold css-1ird22q']
${text_input_website}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Website']
${text_company_name}        xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Company Name']
${text_password_change}     xpath=//div[@id='__next']/div/div/div/div/p
${text_password_success}    xpath=//div[@id='__next']/div/div/div/div/h1
${text_pass}                id=mui-2
${text_email}               id=mui-1  
${TextLoginAccount}         xpath=//div[@id='__next']/div/div/div/section/div/h2 
${text_full_name}           xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Full Name']
${text_email_company}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Email']
${text_employeeid}          xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Employee ID']
${teks_email}               xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Email']
#================================ Inputan & Button & Dropdown & Search ====================================================
${input_full_name}         xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[1]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_employee_id}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[2]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_email_address}     xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[3]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_email_company}     xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[2]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_website_name}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[3]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_phone_number}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[4]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${button_create_user}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//button[@type='button']
${button_create_company}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//div[@class='MuiBox-root css-l0oxgq']/div/div[1]/div[@class='MuiBox-root css-70qvj9']/button[@type='button']
${input_company_name}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[1]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${button_search}           xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//input
${drop_down_office}        xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[5]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div[@role='button']
#=====================================================================================================

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
    #Wait Until Element Contains    ${text_password_success}    Setup Password Success!
    #Wait Until Element Contains    ${text_password_change}     Password changed successfully, return to homepage to login.
    #Click Button    ${button_home_popup}
    
#=========================== Create Company ================================
#Create Company  
    #Set Browser Implicit Wait    3
    #Wait Until Element Contains    ${panel_admin}    Admin
    #Click Element                  ${panel_admin}
    #Click Element                  ${company_management}
    #Click Button                   ${button_create_company}   
    #Wait Until Element Contains    ${text_company_management}    Company Management
    #Wait Until Element Contains    ${text_create_company}        Create company
#===============================================================================    

#======================== Search Company =====================================
Search Company
    Set Browser Implicit Wait    3
    Wait Until Element Contains    ${panel_admin}    Admin
    Click Element                  ${panel_admin}
    Click Element                  ${company_management}
    Set Browser Implicit Wait    3
    Wait Until Element Is Visible  ${button_search}
    Click Element                  ${button_search}   
    Set Browser Implicit Wait    3 
    Input Text                     ${button_search}  PT Wal
#=============================================================================



#Add New Company   
    #================== Page Create Company ======================================
    #Wait Until Element Contains    ${text_company_name}        Company Name
    ##Input Text                     ${input_company_name}       PT Warna Warni Teknologi
    #ait Until Element Contains    ${text_email_company}       Email
    #Input Text                     ${input_email_company}      warnawarni@teknologi.com
    #Wait Until Element Contains    ${text_input_website}       Website
    #Input Text                     ${input_website_name}       https://warnawarniteknologi.com/
    #Wait Until Element Contains    ${text_phone_number}       Phone Number
    #Input Text                     ${input_phone_number}      08211212
    #Click Element                  ${drop_down_office}
    #Select From List By Value      ${drop_down_office}        Office Name
    #==============================================================================
    Sleep    5s
    [Teardown]  Close Browser