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

Test that page top buttons work
    Press page button  ${MyymalatButton}
    Press page button  ${MyymalatButton}
    Press page button  ${PalvelutButton}
    Press page button  ${VaraaAikaButton}
    Press page button  ${InspiraatioButton}
    Press page button  ${TerassilaskuriButton}
    Press page button  ${TuotemerkitButton}
    Press page button  ${AmmattilaisilleButton}
    Press page button  ${TarjouksetButton}
    Press page button  ${OutletButton}
    #verify page
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

Add second item to basket
    Search item  ${item1}
    Select first item result
    Add item to basket
    Increment item amount by one
    To checkout
    Click empty basket
    Back to shopping

Count all stores
    Press page button  ${MyymalatButton}
    Count all stores from page

Tests done close browser
    Close Browser