Feature: Edit Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create a category
    Given I am on the new categories page
    When I fill in "category_name" with "travel"
    And I fill in "category_keywords" with "China"
    And I fill in "category_permalink" with "zxc"
    And I fill in "category_description" with "this is test"
    And I press "Save"
    Then I should see "travel"
    Then I should see "China"
    Then I should see "zxc"
    Then I should see "this is test"

    Then I follow "travel"
    
    
    When I fill in "category_name" with "eat"
    And I fill in "category_keywords" with "soup"
    And I fill in "category_permalink" with "zxc"
    And I fill in "category_description" with "soup to drink"
    And I press "Save"
    Then I should see "eat"
    Then I should see "soup"
    Then I should see "zxc"
    Then I should see "soup to drink"