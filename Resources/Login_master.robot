*** Variables ***

${url}           http://www.doppio-tech.com:8080/login
${browser}       chrome
${txt_USER}      id=j_username
${txt_PASSWORD}  name=j_password
${btn_signin}    name=Submit
 
*** Keywords ***
Open web Jenkins
   Open Browser     ${URL}     ${BROWSER}
   Maximize Browser Window


Close Jenkins
    Close browser


