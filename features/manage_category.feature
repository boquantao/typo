Feature: Manage Category
  As an administrator
  I want to manage blog category
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Succesfully go to the admin page
    When I go to the admin page
    Then I should see "Welcome back, admin!"
    
  Scenario: Succesfully go to the new category page
    When I go to the new category page
    Then I should see "Categories"
  
  Scenario: Succesfully create category
    When I go to the new category page
    And I fill in "category_name" with "Music"
    And I fill in "category_description" with "All"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Music"
    And I should see "All"

  Scenario: Succesfully edit category
    When I go to the new category page
    And I fill in "category_name" with "Music"
    And I press "Save"
    Then I should be on the new category page
    When I follow "Music"
    And I fill in "category_name" with "all music"
    And I press "Save"
    Then I should be on the new category page
    And I should see "all music"
    