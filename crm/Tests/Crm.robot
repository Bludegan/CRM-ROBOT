*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary
Resource         ../Resources/Common.robot
Resource         ../Resources/CrmApp.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test

#Run the script
#python -m robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =                    chrome
${URL} =                        https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =          admin@robotframworktutorial.com
${VALID_LOGIN_PASSWORD} =       MyPassword!

*** Test Cases ***
Should be able to add new customer
    [Documentation]                  This is some basic info about the Test
    [Tags]                           1006    Smoke   Contacts
    CrmApp.Go to "Home" Page

    #LOGIN
    CrmApp.Login whit valid Credencial  ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

    #ADD Customer
    click link 	                     id=new-customer 	 
    wait until page contains 	     Add Customer
    Input Text 	         	         id=EmailAddress         Angel.flores@gmail.com
    Input Text                       id=FirstName            Angel 
    Input Text 	  	                 id=LastName             flores
    Input Text 	  	                 id=City                 Obregon City
    select from list by value        id=StateOrRegion        TX
    select radio button	             gender 	             female
    Select Checkbox 	             name=promos-name
    Click Button 	                 Submit 	        
    wait until page contains         Success! New customer added.   

    #LOG OUT
    click Link                       Sign Out
    wait until page contains         Signed Out


*** Keywords ***

