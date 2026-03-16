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

${toCheckout}       //a[contains(text(), "Siirry kassalle")]

${SearchFields}         //*[@id="react-aria-2"]

${PostalCode}    //*[@id="postalCode"]
${PostalNumber}     00100

${BackShopping}     //*[@class="conditional-link link-button link-button--orange " and @href="/"]

${EmptyBasket}      //button[@class="clear-basket-button"]
${EmptyBasketYes}       //button[@class="button" and @data-cy="simple-modal-confirm-button"]

${MyymalatButton}       //a[contains(text(), "Myymälät")]
${PalvelutButton}       //a[contains(text(), "Palvelut")]
${VaraaAikaButton}       //a[contains(text(), "Varaa aika")]
${InspiraatioButton}       //a[contains(text(), "Inspiraatio ja ohjeet")]
${TerassilaskuriButton}       //a[contains(text(), "Terassilaskuri")]
${TuotemerkitButton}       //a[contains(text(), "Tuotemerkit")]
${AmmattilaisilleButton}       //a[contains(text(), "Ammattilaisille")]
${TarjouksetButton}       //a[contains(text(), "Tarjoukset")]
${OutletButton}       //a[contains(text(), "Outlet")]
