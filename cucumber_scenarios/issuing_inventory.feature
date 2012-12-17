Feature: Issuing Inventory
  As a User
  So I can allow customers to borrow items from inventory
  I want to assign an item from inventory to a customer and assign a due date

Background: customer in database

  Given the following contact exists:
  | first_name | last_name | email            | address       | town   | county   | post_code | telephone     |
  | Jane       | Doe       | jane@test.com    | 12 ABC Street | Aiea   | Honolulu | 96789     | 808-123-4567  |

Scenario: Issuing inventory to Jane Doe
  When I go to the issue inventory page
  And I select "Jane Doe"
  And press "Issue Item"
  Then I should be on inventory page
  And I select "Paper Cutter" from the inventory list
  And I press "Select"
  Then I should be on the due date page
  And I enter "01/01/13" 
  And I press "Submit"
  Then I should see "Paper Cutter issued to Jane Doe. Due back on 01/01/13."
