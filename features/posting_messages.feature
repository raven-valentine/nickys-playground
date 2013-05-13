
Feature: Post a new message
  In order to comunicate with my mates
  As Fred
  I want to post a message

  What we know:
  =============
  - A person can post a message
  - Message is visible
  - Needs a button and a text field
  - Limit of 300 characters


  Open Questions:
  ===============
  - Spell checker?
  - Does a message need to be part of a group?
  - What about multimedia? (photos, videos, etc)

  Scenario: Posting a new message
    Given the following posts exist:
      | post content |
      | Hey cohorts  |
      | What's up?   |
    When I am on the master group timeline page
    And I fill in "message" with "Hey Collaborators!"
    And I press "Post"
    Then I should see 'Hey Collaborators!'
    
