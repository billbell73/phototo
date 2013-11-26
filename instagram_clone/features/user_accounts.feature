Feature: User Accounts

Background: 
Given I am not authenticated
And I am on the homepage

Scenario: Sign up
When I follow "Sign up"
And I fill in "Email" with "w@g.com"
And I fill in "Password" with "bananana"
And I fill in "Password confirmation" with "bananana"
And I press "Sign up"
Then I should see "Welcome! You have signed up successfully"

Scenario: Sign in
Given there is a user with email "willbell@gmail.com" and password "qwertyui"
And I follow "Sign in"
And I fill in "Email" with "willbell@gmail.com"
And I fill in "Password" with "qwertyui"
When I press "Sign in"
Then I should see "Signed in as willbell@gmail.com"

Scenario: Log out
Given there is a user with email "willbell@gmail.com" and password "qwertyui"
And I follow "Sign in"
And I fill in "Email" with "willbell@gmail.com"
And I fill in "Password" with "qwertyui"
And I press "Sign in"
#When I follow "Sign out"
#Then I should see "Signed out successfully"

