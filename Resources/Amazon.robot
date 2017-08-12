*** Settings ***
Library  Selenium2Library
Library  String

*** Variables ***
${URL} =  http://www.amazon.com
${BROWSER} =  firefox
${HOME_PAGE_TEXT} =  Your Amazon.com
${SEARCH_TEXT_BOX} =  id=twotabsearchtextbox
${SEARCH_BUTTON} =  xpath=//div[@class='nav-search-submit nav-sprite']/input
${FIRST_RESULT} =  xpath=//li[@id='result_0']//a[contains(@title,'PRODUCT_PLACEHOLDER')]
${INLINE_BANNER} =  id=gw-desktop-herotator
${ADD_TO_CART_BUTTON} =  Add to Cart
${ADDED_TO_CART_TEXT} =  1 item added to Cart

*** Keywords ***
Open Home Page
    open browser  ${URL}  ${BROWSER}
    wait until page contains  ${HOME_PAGE_TEXT}

Search for Product
    [Arguments]  ${PRODUCT}
    input text  ${SEARCH_TEXT_BOX}  ${PRODUCT}
    click button  ${SEARCH_BUTTON}

Verify Search Result
    [Arguments]  ${PRODUCT}
    ${FIRST_VALID_RESULT} =  replace string  ${FIRST_RESULT}  PRODUCT_PLACEHOLDER  ${PRODUCT}
    page should contain element  ${FIRST_VALID_RESULT}

Add to Cart
    page should contain  ${ADD_TO_CART_BUTTON}
    click button  ${ADD_TO_CART_BUTTON}
    page should contain  ${ADDED_TO_CART_TEXT}

Select Banner Product
    click element  ${INLINE_BANNER}