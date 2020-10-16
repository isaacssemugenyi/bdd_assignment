Feature: Jumia Sidebar

Scenario: Access page of sub categories of product clicked
    Given I visit "https://www.jumia.ug"
    * I access the site
    When I click on any of the product on the Sidebar
    Then I should be redirected to the page with product subcategories

Scenario: Access to list of products
    Given I was redirected to the product sub categories page
    When I click on any of the product sub categories provided
    Then I should be able to see individual products that I can add to cart
