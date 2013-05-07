Feature: Have a group timeline
  In order to view group messages
  As Fred
  I want to view a group timeline

  What we know:
  =============
  - A person can see the timline
  - Messages that have been posted are visible


  Open Questions:
  ===============
  - Could have a maximum number of messages
  - Could delete a message from the timeline
  - Could reply to a message

  Scenario: Viewing the timeline
    Given I am on the timeline page
    Then I should see "a list of posts"
