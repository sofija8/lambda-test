*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../helpers/helper_keywords.robot
Resource    ../keywords/LoginKeywords.robot
Resource    ../helpers/driver.robot
Variables    ../locators/home_page.py
Variables    ../variables.py
Test Setup    Start Browser    ${demoblaze_link}
Test Teardown    driver.Close Browser


*** Test Cases ***
Login to DemoBlaze
    [Tags]    smoke    regression
    Login    ${test_username}    ${test_password}