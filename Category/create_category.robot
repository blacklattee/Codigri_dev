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
${panel_product}           xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1ewveix']/div/div[1]/div[5]/div/div[@role='button']/div[1]/div[.='Product']
${master_product}          xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1ewveix']/div/div[1]/div[5]/div/div[2]//div[@role='region']//a[@href='/product/master-product']
${master_category}         xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1ewveix']/div/div[1]/div[5]/div/div[2]//div[@role='region']//a[@href='/product/category']
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
${element_create_master_product}    xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']//h3[.='Create Master Product']
${element_master_product}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']//h3[.='Master Product']
${element_master_category}  xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']//h3[.='Category']
${text_office_management}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']//h3[.='Office Management']
${text_category}            xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//span[@class='MuiTypography-root MuiTypography-xxxlSemiBold css-1ird22q']
${TextLoginAccount}         xpath=//div[@id='__next']/div/div/div/section/div/h2 
${text_full_name}           xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Full Name']
${text_email_company}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Email']
${text_employeeid}          xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Employee ID']
${text_description_master_category}    xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[3]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/textarea[1]
${teks_email}               xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//span[.='Email']
#================================ Inputan & Button & Dropdown ====================================================
${input_full_name}         xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[1]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_employee_id}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[2]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_email_address}     xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[3]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_email_company}     xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[2]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_website_name}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[3]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_phone_number}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[4]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${button_create_user}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//button[@type='button']
${button_create_company}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//div[@class='MuiBox-root css-l0oxgq']/div/div[1]/div[@class='MuiBox-root css-70qvj9']/button[@type='button']
${input_company_name}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[1]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${button_create_product}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-1xgp44y']/button[1]
${button_create_category}  xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div[@class='MuiBox-root css-0']/div/div[1]/div[@class='MuiBox-root css-70qvj9']/button[@type='button']
${list_dropdown_brand}     xpath=//div[@id='menu-']//ul[@role='listbox']/li[2]
${list_dropdown_category}  xpath=//div[@id='menu-']//ul[@role='listbox']/li[2]
${status_dropdown_master_product}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[4]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div[@role='button']
${status_category}         xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div//div[@role='button']
${status_dropdown_master_product}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[2]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div[@role='button']
${input_name_product}      xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[1]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${input_name_category}     xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[1]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/input
${dropdown_brand}          xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[2]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div[@role='button']
${dropdown_category}       xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[3]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div[@role='button']
${descript_master_product}  xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div/div/div/div[@class='MuiBox-root css-0']/div[5]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div/textarea[1]
${active_master_prodcut}   xpath=//div[@id='menu-']//ul[@role='listbox']/li[2]
${active_master_category}  xpath=//div[@id='menu-']//ul[@role='listbox']/li[2]
${button_master_product}   xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//button[@type='button']
${button_master_category}  xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']//button[@type='button']
${drop_down_office}        xpath=/html//div[@id='__next']/div[@class='MuiBox-root css-ayjhuo']/div[@class='MuiBox-root css-1hwv2q0']/div[@class='MuiBox-root css-13o7eu2']/div//div[@class='MuiBox-root css-hv8n5o']/div[@class='MuiBox-root css-0']/div[5]/div[@class='MuiBox-root css-j7qwjs']/div[@class='MuiBox-root css-0']/div/div[@role='button']
#=====================================================================================================

*** Test Cases ***
Login_User
    Open Browser  https://bo.erp.yumi.live/login  ${BROWSER}
    Maximize Browser Window
    Sleep   5
    Element Should Contain    ${TextLoginAccount}   Login Account
    Element Should Contain    ${WelcomeBack}        Welcome back! Please enter your detail.
    Input Text                ${email}              rabilfernanda@gmail.com
    Input Password            ${password}           rabil123 
    Click Button              ${button_login}
    Sleep    1
Create New Master Product
    Wait Until Element Contains    ${text_office_management}           Office Management
    Sleep    3
    Click Element                  ${panel_product}
    Sleep    3
    Click Element                  ${master_category}
    Wait Until Element Contains    ${element_master_category}          Category
    Sleep    3

    Click Button                   ${button_create_category}
    Wait Until Element Contains    ${text_category}                    Category
    #Wait Until Element Contains    ${element_master_category}          Create Category 
    Sleep    3

    Input Text                     ${input_name_category}              Testing Category 5 Juli 2023
    Press Key                      ${status_category}                  TAB
    Sleep    2
    
    Click Element                  ${status_category}
    Mouse Down                     ${active_master_category}
    Click Element                  ${active_master_category}
    Sleep    3

    Press Key                      ${text_description_master_category}                  \TAB
    Input Text                     ${text_description_master_category}                  Tessst
    Click Button                   ${button_master_category}    
 Add New Master Product   
    #================== Page Create Master Product ======================================
    #Wait Until Element Contains    ${element_create_master_product}    Create Master Product  
    #Input Text                     ${input_name_product}               Nike
    
    #Click Element                  ${dropdown_brand}  
    #Mouse Down                     ${list_dropdown_brand}
    #Click Element                  ${list_dropdown_brand}
    #Click Element                  ${dropdown_category}
    
    #Mouse Down                     ${list_dropdown_category}
    #Click Element                  ${list_dropdown_category}
    #Click Element                  ${status_dropdown_master_product}
    #Click Element                  ${active_master_prodcut} 
    #Input Text                     ${descript_master_product}           Test Deskripsi   
    
    #Click Button                   ${button_master_product}
    Sleep    5s
    [Teardown]  Close Browser