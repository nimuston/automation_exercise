#Identifiers.robot for webpage buttons and fields

*** Variables ***
${ItemSearchButton}     css:[data-cy="main-search-button"]	

${FirstWCHarja}         css:[data-product_id="7391447089073"]

${BasketTotal}     //*[@id="app"]/div[5]/div/div[3]/div/span

${item1}   WC harja
${FirstWCHarja}     //*[@data-product_id="7391447089073" and @aria-labelledby="ProductList_7391447089073_image-description"]
${AddToBasket}      //*[@class="buy-button" and @aria-label="Lisää ostoskoriin"]
${ItemIncrement}     //*[@data-cy="product-counter-increment" and @aria-label="Lisää määrää" and @type="button"]
${ItemDecrease}     //*[@data-cy="product-counter-decrement" and @aria-label="Vähennä määrää" and @type="button"]
${ContinueShopping}     css=[data-cy="continue-shopping-button"]
${ActivateBasket}   //*[@id="app"]/div[5]/div/div[2]


${toCheckout}       //a[contains(text(), "Siirry kassalle")]

${SearchFields}         //*[@id="react-aria-2"]

${PostalCode}    //*[@id="postalCode"]
${PostalNumber}     00100

${homeDelivery}    //*[@id="react-aria-5812"]/h3
${matkahuolto}      //*[@id="main-content"]/div/div[3]/div/div/div/div[1]/div/div[2]/div/div/div[2]/div[3]/div[2]/fieldset/div[1]/label/div/div

${NoutoMyymalasta}    //*[@id="react-aria-5808"]/h3
${EspoonKeskus}     //*[@id="main-content"]/div/div[3]/div/div/div/div[1]/div/div[2]/div/div/div[2]/div[1]/div[2]/fieldset/label/div[2]

${EmptyBasket}      //*[@id="main-content"]/div/div[2]/button
${EmptyBasketYes}   //*[@id="main-content"]/div/div[2]/div/div[2]/div[2]/button[1]

${HomeDEL}      class:home-delivery-split-container__group-label