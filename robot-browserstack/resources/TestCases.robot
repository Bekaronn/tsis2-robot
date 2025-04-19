*** Settings ***
Library    SeleniumLibrary
Resource    ./KeywordsFile.robot

*** Keywords ***
Check Stack Overflow Homepage
    Add Implicit Wait
    Title Should Be    Newest Questions - Stack Overflow
    Page Should Contain Element    name:q

Search And Verify Question
    [Arguments]    ${search_term}
    Input Text    name:q    ${search_term}
    Press Keys    name:q    RETURN
    Capture Page Screenshot