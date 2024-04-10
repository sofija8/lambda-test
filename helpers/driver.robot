*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Keywords ***
Start Browser
    [Arguments]    ${test_url}
    Sleep    3seconds
    Set Selenium Speed    0.1seconds
    Set Selenium Timeout    10seconds
    Start Chrome    ${test_url}

Start Chrome
    [Arguments]    ${link}
    ${chrome_options}=    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Open Browser    ${link}    chrome    options=${chrome_options}
    Maximize Browser Window

Close Browser
    SeleniumLibrary.Close Browser