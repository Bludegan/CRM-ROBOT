*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL} =        Login
${SIGNIN_EMAIL_TEXTBOX} =       id=email-id 
${SIGNIN_PASSWORD_TEXTBOX} =    id=password   
${SIGNIN_SUBMIT_BUTTON} =       id=submit-id



*** Keywords ***
Verify Page Loaded
    wait until page contains    ${SIGNIN_HEADER_LABEL} 

Login With Valid Credencial
    [Arguments]                 ${EmailAddress}  ${password}                               
    Fill "Email" Field          ${EmailAddress}
    Fill "Password" Field       ${password}                                        
    Click "Submit" Button

Fill "Email" Field   
    [Arguments]                 ${EmailAddress}                               
    Input Text 	                ${SIGNIN_EMAIL_TEXTBOX}       ${EmailAddress}              
    
Fill "Password" Field
    [Arguments]                 ${password}                               
    Input Text 	                ${SIGNIN_PASSWORD_TEXTBOX}       ${password}             

Click "Submit" Button
    Click Button 	            ${SIGNIN_SUBMIT_BUTTON}