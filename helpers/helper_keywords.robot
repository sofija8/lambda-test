*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Keywords ***
Wait and Click
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Wait and Input Text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Input Text    ${locator}    ${text}