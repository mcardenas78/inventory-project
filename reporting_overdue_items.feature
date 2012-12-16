Feature: Reporting Overdue Items
  As a user
  So I can manage lending of inventory
  I want to see a report with all overdue items

Scenario: view report with all overdue items
  When I go to the reports tab
  And I click on "Overdue Items"
  Then I should see a report showing all overdue items and who has them