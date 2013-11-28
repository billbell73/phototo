Feature: Photos

Scenario: viewing photo captions
Given that there is a photo with caption "Hello"
When I am on the homepage
Then I should see "Hello"

Scenario: viewing images
Given that there is a photo that has been uploaded
When I am on the homepage
Then I should see a photo

Scenario: posting/uploading photos
Given I am logged in and on the upload photo form
And I fill in "Caption" with "Blah"
And I attach the "peas.jpg" file
And I press "Create Photo"
Then I should see a photo