Feature: Likes

@javascript
Scenario: Liking a photo
Given that there is a photo that has been uploaded
And I am logged in as willbell
And I am on the homepage
When I press "❤"
Then in the "like-section" I should see "willbell@gmail.com"

@javascript
Scenario: Un-liking a photo
Given I am logged in as willbell
And there are two photos that I have liked
And I am on the homepage
When I press "❤" under the first photo
And I wait for 2 seconds
Then I will only see "willbell@gmail.com" once in a "like-section"
