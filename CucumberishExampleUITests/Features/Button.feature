
Feature: Tap button

Scenario: As a user, I want the button to say "Tapped" when I tap it

Given I launch the app
When I tap the button
Then the button should say "Tapped"
When I tap the button again
Then the second time, the button should say "Tap Me"
