Feature: Viewing products
    Every person who visits the site can view products

    Scenario: View products
        Given I types "https://www.jumia.ug" in the browser
        When I hit the "enter button" on my keyboard
        Then I should see the "jumia front page with products"

    Scenario: View more products
        Given I scroll to the end of the first section of the product category
        When I click on the "view all" button 
        Then I should be redirected to a different page with all products in that category

    Scenario: View details of a single product
        Given I hover hover a single product from the product list
        When I click on that product
        Then I should be redirected to a page with details about that product
