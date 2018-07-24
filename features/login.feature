Feature: Message feature is about sending a message to contact from Friends list

Scenario: Message
Given I clear app data
    When I am on welcome screen
    And I enter email
    And I enter password
    And I select login button
    And I tap the menu button
    And I search a contact
    And I pick a contact from the Friends list
    And I compose a message
Then I send the message



