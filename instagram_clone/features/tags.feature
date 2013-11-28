Feature: Tags

Scenario: Separated Tags
Given that there is a photo that has been uploaded
And I am a new, authenticated user with email "willbell@gmail.com" and password "qwertyui"
And I am on the homepage
And I follow "Add Tags"
When I fill in "Tags" with "#YOLO #BOLO"
And I press "Create Tag"
Then I should see "#YOLO, #BOLO"

Scenario: Show all photos with same tag
Given that there are two photos one tagged "BEAUTIFUL!" and the other not
And I am on the homepage
When I follow "BEAUTIFUL!"
Then I should only see the photo tagged "BEAUTIFUL!"