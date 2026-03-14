#Identifiers.robot for webpage buttons and fields

*** Variables ***
${ItemSearchButton}     css:[data-cy="main-search-button"]	

${FirstItemToBasket}  //*[@id="main-content"]/div/div[3]/div[3]/div[3]/div[1]/div/article[1]/div/div[3]/div/button

${FirstWCHarja}         css:[data-product_id="7391447089073"]

${BasketTotal}     //*[@id="app"]/div[5]/div/div[3]/div/span

${item1}   WC harja
${FirstWCHarja}    //*[@id="main-content"]/div/div[3]/div[3]/div[3]/div[1]/div/article[1]/div/div[3]/div/a/span
${AddToBasket}      //*[@id="main-content"]/div[1]/div[2]/div[1]/div/div[2]/div[7]/div/div[2]/div/button/span
${ItemIncrement}    //*[@id="app"]/div[5]/div/div[2]/div[1]/div[3]/button[2]
${ItemDecrease}     //*[@id="app"]/div[5]/div/div[2]/div[1]/div[3]/button[1]
${ContinueShopping}     css=[data-cy="continue-shopping-button"]
${ActivateBasket}   //*[@id="app"]/div[5]/div/div[2]

${toCheckout}     //*[@id="app"]/div[5]/div/div[3]/a

${SearchFields}         //*[@id="react-aria-2"]

${PostalCode}    //*[@id="postalCode"]
${PostalNumber}     00100

${homeDelivery}    //*[@id="react-aria-5812"]/h3
${matkahuolto} //*[@id="main-content"]/div/div[3]/div/div/div/div[1]/div/div[2]/div/div/div[2]/div[3]/div[2]/fieldset/div[1]/label/div/div

${NoutoMyymalasta}    //*[@id="react-aria-5808"]/h3
${EspoonKeskus}     //*[@id="main-content"]/div/div[3]/div/div/div/div[1]/div/div[2]/div/div/div[2]/div[1]/div[2]/fieldset/label/div[2]

${EmptyBasket}      //*[@id="main-content"]/div/div[2]/button
${EmptyBasketYes}   //*[@id="main-content"]/div/div[2]/div/div[2]/div[2]/button[1]

