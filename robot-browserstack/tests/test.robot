*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/KeywordsFile.robot
Resource        ../resources/TestCases.robot
Test Setup      Execute test
Test Teardown   Close Session


*** Variables ***
${website_url}=     https://stackoverflow.com
&{test_caps}        browser=chrome
${search_term}=     robotframework

*** Keywords ***
Execute test
    Open Session    ${test_caps}    ${website_url}

*** Test Cases ***
Check Stack Overflow Homepage Test 1
    Check Stack Overflow Homepage

Search Stack Overflow Test 2
    Search And Verify Question    ${search_term}