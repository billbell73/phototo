Feature: Likes

#@javascript
#Scenario: Liking a photo
#Given that there is a photo that has been uploaded
#And I am a new, authenticated user with email "willbell@gmail.com" and password "qwertyui"
#And I am on the homepage
#When I press "❤"
#Then in the "like-section" I should see "willbell@gmail.com" 

#@javascript
#Scenario: Un-liking a photo
#Given I am a new, authenticated user with email "willbell@gmail.com" and password "qwertyui"
#And there are two photos that I have liked
#And I am on the homepage
#When I press "❤" under the first photo
#Then I will only see "willbell@gmail.com" once in a "like-section"