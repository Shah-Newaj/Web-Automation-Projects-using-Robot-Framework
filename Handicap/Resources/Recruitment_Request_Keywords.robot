*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Click Recruitment Request
    Click Element    ${r_request}

Click Hiring Manager
    Click Element    ${hiring_manager}

Click Add New
    Click Element   ${add_new}
#    Must use Element here otherwise it will not work although it's a button

