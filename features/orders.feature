Feature: Orders
    Requires one to be logged in

Scenario: Access personal Orders
    Given I am already logged in on Jumia
    * I click on the "HI" tab
    * I see a drop down bar
    When I click on "orders" tab
    Then I should see a page with all my previous order "delivered and cancelled"

Scenario: See order details
    Given I am seeing all the previous order on the "order page"
    When I click on "see details" button on one of the orders
    Then I should see details concerning that particular order

Scenario: Access delivery timestamp
    Given I am seeing the details of an order that was made
    When I click on "see details history"
    Then I should see the dates when the order was "placed", "confirmed", "shipped" and "delivered"