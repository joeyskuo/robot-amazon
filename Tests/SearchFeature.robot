*** Settings ***
Documentation  Test verifies that search produces relevant results
Library  Selenium2Library
Resource  ../Resources/Amazon.robot

*** Test Cases ***
First search result must contain query in title
    # Before
    open browser  http://www.amazon.com  firefox
    wait until page contains  Your Amazon.com


    # Search for product
#    input text  id=twotabsearchtextbox  Echo Show
#    click button  xpath=//div[@class='nav-search-submit nav-sprite']/input
#    # Verify
#    page should contain element  xpath=//li[@id='result_0']//a[contains(@title,'Echo Show')]
    #After
    close browser