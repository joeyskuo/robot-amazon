*** Settings ***
Library  Selenium2Library

*** Variables ***
${SEARCH_TEXT_BOX} = id=twotabsearchtextbox
${PRODUCT} = Echo Show
${SEARCH_BUTTON} = xpath=//div[@class='nav-search-submit nav-sprite']/input
${FIRST_RESULT} = xpath=//li[@id='result_0']//a[contains(@title,'PRODUCT_PLACEHOLDER')]

*** Keywords ***
Search for Product
    input text  ${SEARCH_TEXT_BOX} ${PRODUCT}
    click button  ${SEARCH_BUTTON}

Verify Search Result
    ${FIRST_VALID_RESULT} = replace string  ${FIRST_RESULT}  PRODUCT_PLACEHOLDER  ${PRODUCT}
    page should contain element  ${FIRST_VALID_RESULT}