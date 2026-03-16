*** Settings ***
Documentation    Simple example using SeleniumLibrary - Test suite
Resource  ../Resources/Page_resources.robot
Test Setup  Before tests
Test Teardown  run keyword if  '${TEST_STATUS}' == 'FAIL'  Recovery from test case failure

*** Test Cases ***
Open WebBrowser and test page
    [Setup]    Set Selenium Speed  0.5
    Open browser to K-Rauta page
    Accept Cookies If Present
    #Maximize Browser Window

#Test that page top buttons work
    #Press page button  ${MyymalatButton}
    #verify text on page
    #Press page button  Palvelut
    #verify text on page

Add item to basket and finally clear basket
    Search item  ${item1}
    Select first item result
    Add item to basket
    Verify basket total  15 €
    Increment item amount by one
    Verify basket total  30 €
    Decrease item amount by one
    Verify basket total  15 €
    Continue shopping button
    Add item to basket
    Verify basket total  64,58 €
    To checkout
    Type postal code
    Verify receipt total  64,58 €
    Click empty basket
    Back to shopping
    #Clear search field

Add second item to basket
    Search item  ${item1}
    Select first item result
    Add item to basket
    Increment item amount by one
    To checkout
    Click empty basket
    Back to shopping
    #Clear search field

Count all stores
    Press page button  ${MyymalatButton}
    Count all stores from page

Tests done close browser
    Close Browser