Feature: The Internet
  This feature covers (some) Example pages on 'the-internet.herokuapp.com'

  @TEST_TI_0001
  Scenario: Homepage has a list of links to Expected examples
    Given the page under test is 'https://the-internet.herokuapp.com'
    And "Welcome to the-internet" is displayed
    Then the full list of links is displayed

  @TEST_TI_0002
  Scenario: Basic Auth allows validated access
    Given the page under test is 'https://the-internet.herokuapp.com'
    When the 'Basic Auth' example is opened
    And valid credentials are supplied
    Then Congratulations should be displayed

  @Test_TI_0003
  Scenario: Sortable Data Tables - Example 1 displays the expected 4 results
    Given the page under test is 'https://the-internet.herokuapp.com/tables'
    And 'Data Tables' header is displayed
    Then the data is present for Last Name, First Name, Email, Due and Web Site
    //Here I'd create a page java class for Srtable Data Tables to define the data expected

  @TEST_TI_0004
  Scenario: Sortable Data Tables - Example 1 displays the expected 4 results and sorts on Last Name
    Given the page under test is 'Dropdown'
    And Dropdown List is displayed
    Then the two selectable options are Option 1 and Option 2

  @TEST_TI_0005
  Scenario: Dropdown List - Option 1 and 2 are displayed
    Given the page under test is 'Dropdown'
    And Dropdown List is displayed
    Then the two selectable options are Option 1 and Option 2
