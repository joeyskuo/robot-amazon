*** Settings ***
Documentation  Test verifies that search produces relevant results

Library  Selenium2Library
Resource  ../Resources/Amazon.robot

Test Setup  Open Home Page
Test Teardown  close browser

*** Variables ***
${product} =  Echo Show

*** Test Cases ***
First search result must contain query in title
    Amazon.Search for Product  ${product}
    Amazon.Verify Search Result  ${product}
