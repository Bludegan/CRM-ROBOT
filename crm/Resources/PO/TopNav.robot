*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TOPNAV_SINGIN_LINK} =     id=SignIn


*** Keywords ***
Click "Sing In" Link
    SeleniumLibrary.Click Link 	 locator=${TOPNAV_SINGIN_LINK} 	 