*** Settings ***
Documentation    Simple example using SeleniumLibrary - Test suite
Resource  Page_resources.robot
Test Setup  Set Selenium Speed  0.5
#Test Teardown  run keyword if  '${TEST_STATUS}' == 'FAIL'  Recovery from test case failure

*** Test Cases ***
TC001 - Open WebBrowser and test page
    Open browser to K-Rauta page
    Accept Cookies If Present
    #Maximize Browser Window

TC002 - Add item to basket
    Search item  ${item1}
    Select first item result
    Add item to basket
    Verify basket total  15 €
    Continue shopping button
    Add item to basket
    Verify basket total  72,66 €
    To checkout
    Type postal code
    Verify receipt total  72,66 €
    Close Browser

