*** Settings ****
Library		SeleniumLibrary
Resource    ../Resources/Login_master.robot  
Library     DataDriver  ../Testdata/data_login.xlsx  sheet_name=data  

Test Setup     login_master.Open web Jenkins
Test Teardown  login_master.Close Jenkins
Test Template  Login web Jenkins 

*** Keywords ***
Login web Jenkins
   [Arguments]     ${USER}         ${PASSWORD}   ${ERROR_MESSAGE}
    Input Text      ${txt_USER}     ${USER}
    Input Text      ${txt_PASSWORD}  ${PASSWORD}
    Click Button    ${btn_signin}
    Element Text Should Be	//*[contains(text(), '${ERROR_MESSAGE}')]  ${ERROR_MESSAGE}


*** Test Cases ***      
Verify username and PASSWORD


