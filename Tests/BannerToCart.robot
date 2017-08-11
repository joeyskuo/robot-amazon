*** Settings ***
Documentation  Test verifies that search produces relevant results
Library  Selenium2Library


*** Test Cases ***
Search results contain query in titles
    open browser  http://www.amazon.com  chrome
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Echo Show
    click button  xpath=//div[@class='nav-search-submit nav-sprite']/input