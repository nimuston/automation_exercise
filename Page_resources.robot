*** Settings ***
Documentation    Simple example using SeleniumLibrary - Resources
Library  SeleniumLibrary
Resource  Identifiers.robot

*** Variables ***
${url}    https://www.k-rauta.fi/
${Browser}      Chrome
${WAITELEMENTSTIMEOUT}     15
${WAITSUCCEEDEDTIMEOUT}     20 sec
${RETRYINTERVAL}     3 sec

*** Keywords ***
Open browser to K-Rauta page
    open browser  ${url}    ${browser}  options=add_argument("--disable-blink-features=AutomationControlled"); add_argument("--log-level=1")
    title should be  Rautakauppa - K-Rauta
    sleep  2

Accept Cookies If Present
    Run Keyword And Ignore Error    Click Button    xpath=//button[contains(.,'Hyväksy')]
    ${visible}=    Run Keyword And Return Status
    ...    Element Should Be Visible    xpath=//button[contains(.,'Accept')]
    IF    ${visible}
        Click Button    xpath=//button[contains(.,'Accept')]
    END

Search item
    [Arguments]    ${itemname}
    Wait Until Element Is Visible  xpath=//input[@type='search']  timeout=${WAITELEMENTSTIMEOUT}
    Input Text  xpath=//input[@type='search']    ${itemname}
    Press Keys  xpath=//input[@type='search']    ENTER

Select first item result
    Wait Until Element Is Visible  //*[@id="main-content"]/div/div[3]/div[3]/div[3]/div[1]/div/article[1]/div/div[3]/div/a/span   15s
    Click Element  //*[@id="main-content"]/div/div[3]/div[3]/div[3]/div[1]/div/article[1]/div/div[3]/div/a/span

Select first search result
    #Wait Until Element Is Visible    ${FirstWCHarja}  15s
    Wait Until Element Is Enabled  ${FirstWCHarja}  timeout=${WAITELEMENTSTIMEOUT}
    Wait Until Keyword Succeeds  ${WAITSUCCEEDEDTIMEOUT}  ${RETRYINTERVAL}  click element  ${FirstWCHarja}
    Click Element    ${FirstWCHarja}
    #Wait Until Element Is Visible    xpath=(//a[contains(@href,"/tuote/")])[1]    15s
    #Click Element    xpath=(//a[contains(@href,"/tuote/")])[1]

Add item to basket
    Wait Until Element Is Visible  xpath=//button[contains(.,'Lisää ostoskoriin')]  timeout=${WAITELEMENTSTIMEOUT}
    Click Button    xpath=//button[contains(.,'Lisää ostoskoriin')]

Continue shopping button
    Wait Until Element Is Visible   ${ContinueShopping}  timeout=${WAITELEMENTSTIMEOUT}
    Click Element   ${ContinueShopping}

Increase Basket Quantity
    Wait Until Element Is Visible    xpath=//button[contains(@aria-label,'Lisää määrää') or contains(.,'+')]  timeout=${WAITELEMENTSTIMEOUT}
    Click Button    xpath=//button[contains(@aria-label,'Lisää määrää') or contains(.,'+')]

Increment item amount by one
    Wait Until Element Is Visible   ${ItemIncrement}  timeout=${WAITELEMENTSTIMEOUT}
    #Click Element    ${ItemIncrement}
    Click Element   css=[aria-label="Lisää määrää"]

Verify basket total
    [Arguments]  ${baskettotal}
    Wait Until Element Is Visible  css:[data-cy="mini-basket-total"]
    ${result} =  Get Text  css:[data-cy="mini-basket-total"]
    Should Be Equal    ${BasketTotal}  ${result}

To checkout
    Wait Until Element Is Visible  ${toCheckout}   15s
    Click Element  ${toCheckout}

Type postal code
    Wait Until Element Is Visible  ${PostalCode}  15s
    Input Text  ${PostalCode}    ${PostalNumber}
    Press Keys  ${PostalCode}    ENTER

Verify receipt total
    [Arguments]  ${baskettotal}
    Wait Until Element Is Visible  css:[data-cy="basket-total-value"]
    ${result} =  Get Text  css:[data-cy="basket-total-value"]
    Should Be Equal    ${BasketTotal}  ${result} 

Select home delivery
    #Wait Until Element Is Visible   ${homeDelivery}  timeout=${WAITELEMENTSTIMEOUT}
    #Click Element   ${homeDelivery}
    #Wait Until Element Is Visible   ${matkahuolto}  timeout=${WAITELEMENTSTIMEOUT}
    #Click Element   ${matkahuolto}
    Wait Until Element Is Visible    xpath://*[contains(text(),'kotiinkuljetus')]  timeout=${WAITELEMENTSTIMEOUT}
    Click Button    xpath://*[contains(text(),'kotiinkuljetus')]
    Wait Until Element Is Visible    xpath://*[contains(text(),'matkahuolto')]  timeout=${WAITELEMENTSTIMEOUT}
    Click Button    xpath://*[contains(text(),'matkahuolto')]

Select get from store
    Wait Until Element Is Visible   ${NoutoMyymalasta} timeout=${WAITELEMENTSTIMEOUT}
    Click Element   ${NoutoMyymalasta}
    Wait Until Element Is Visible   ${EspoonKeskus}   timeout=${WAITELEMENTSTIMEOUT}
    Click Element   ${EspoonKeskus} 

Recovery from test case failure
    close browser
    open browser  ${url}    ${browser}  options=add_argument("--disable-blink-features=AutomationControlled"); add_argument("--log-level=1")
    title should be  Rautakauppa - K-Rauta
