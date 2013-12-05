Feature: Orders

Background:
Given that there is a photo that has been uploaded
And I am a new, authenticated user with email "willbell@gmail.com" and password "qwertyui"
And no emails have been sent

Scenario: Admin table for print orders
When I buy 2 prints of the photo
And I log in as an administrator
And I am on the administrator index page
Then I can see that 2 prints have been ordered by "willbell@gmail.com"

Scenario: Email sent to customer once payment made
When I buy 1 print of the photo
Then an email should be sent to "willbell@gmail.com"
And the email should contain "Your order is on its way..."
