Feature: Fix bugs on the categories sites by admin
  
    Background: 
      Given the blog is set up
      And I am logged into the admin panel
    
    Scenario: Successfully create Categories
      Given I am on the new categories page
      When I fill in "category_name" with "Foobar"
      And I fill in "category_keywords" with "haha"
      And I fill in "category_description" with "no"
      And I press "Save"
      Then I should see "Foobar"