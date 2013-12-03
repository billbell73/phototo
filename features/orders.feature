Feature: Orders

Scenario: Admin table for print orders
Given that there is a photo that has been uploaded
And I am a new, authenticated user with email "willbell@gmail.com" and password "qwertyui"
When I buy 2 prints of the photo
And I log in as an administrator
And I am on the administrator index page
Then I can see that 2 prints have been ordered by "willbell@gmail.com"