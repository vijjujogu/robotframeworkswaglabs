*** Settings ***
Library             SeleniumLibrary
Variables    ../PageObjects/locators.py
*** Keywords ***
open my browser
    [Arguments]    ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window
Enter username
    [Arguments]    ${username}
    Input Text    ${txt_loginusername}    ${username}
Enter password
    [Arguments]    ${password}
    Input Text    ${txt_loginpassword}    ${password}
Click signIn
    Click Button    ${btn_loginbutton}
verify successfull login
    Title Should Be    Swag Labs
close my browser
    Close All Browsers






