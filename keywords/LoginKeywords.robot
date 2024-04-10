*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../helpers/helper_keywords.robot
Variables    ../locators/home_page.py


*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Wait and Click    ${login_link}
    Wait and Input Text    ${username_field}    ${username}
    Wait and Input Text    ${password_field}    ${password}
    Wait and Click    ${login_button}
    Wait Until Element Contains    ${welcome_link}    Welcome ${username}
    Element Text Should Be    ${welcome_link}    Welcome ${username}