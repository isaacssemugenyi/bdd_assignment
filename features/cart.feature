Feature: Cart
    Every person who visits and logs in the site can add products to cart

    Scenario: Add product to cart
        Given I vist "https://www.jumia.ug" and view product
        * I hover over a single product
        When I click on add to cart
        Then The product should be added to cart with number in cart updated

    Scenario: Add more product to cart
        Given Given I am redirected to the "cart page" when i click on "add to cart" a product
        When I click "continue shopping" on the "cart page" 
        Then I should be redirected back to the list of products to add to cart

    Scenario: Try to checkout
        Given Given I click on "add to cart" on another product
        * the product I am redirected to the cart page
        * product added to cart and total updated
        When I click on "proceed to check out"
        Then I should be prompted to signup or signin

    Scenario: I check out
        Given I login in with my credentials
        When I get redirected to the checkout page
        Then I should see all details about the transport costs and mode of payment