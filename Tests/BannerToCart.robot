*** Settings ***
Documentation  Test verifies that main banner product can be added to cart

Library  Selenium2Library
Resource  ../Resources/Amazon.robot

Test Setup  Open Home Page
Test Teardown  close browser

*** Test Cases ***
First banner product successfully added to cart
    Amazon.Select Banner Product
    Amazon.Add to Cart

