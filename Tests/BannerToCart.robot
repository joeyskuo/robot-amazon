*** Settings ***
Documentation  Test verifies that main banner product can be added to cart
Library  Selenium2Library


*** Test Cases ***
First banner product successfully added to cart
    [Tags]  Banner
    open browser  http://www.amazon.com  firefox
    wait until page contains  Your Amazon.com
    click element  id=gw-desktop-herotator
    page should contain  Add to Cart
    click button  Add to Cart
    page should contain  1 item added to Cart
    close browser