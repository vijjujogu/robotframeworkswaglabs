*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Testcase1
    Log     hello 
    Log To Console     hi
    OPEN BROWSER     https://www.saucedemo.com/    chrome
    Input Text    name:user-name    standard_user
    Input Text    name:password    secret_sauce
    Click Element    name:login-button    
    Title Should Be    Swag Labs