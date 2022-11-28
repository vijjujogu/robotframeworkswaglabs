*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Library    DataDriver    ../testdata/logindata.xlsx    sheet_name=login
*** Variables ***
${browser}    chrome
${siteurl}    https://www.saucedemo.com/
${username}    standard_user
${password}    secret_sauce
*** Test Cases ***
Logintest
    open my browser    ${siteurl}    ${browser}
    Enter username    ${username}
    Enter password    ${password}
    Click signIn
    Sleep    3
    verify successfull login
    close my browser
