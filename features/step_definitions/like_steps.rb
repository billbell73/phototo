Given(/^there are two photos that I have liked$/) do
	user = create(:user, email: "a@b.com")
  photo = create(:photo, user: user)
  photo2 = create(:photo, user: user)
  create(:like, user_id: @user.id, photo_id: photo.id)
  create(:like, user_id: @user.id, photo_id: photo2.id)
end

When(/^I press "(.*?)" under the first photo$/) do |like_icon|
  first('.like-button').click
end

Then(/^in the "(.*?)" I should see "(.*?)"$/) do |classname, email|
  expect(page).to have_css ".#{classname}", text: email
end

Then(/^I will only see "(.*?)" once in a "(.*?)"$/) do |email, classname|
  expect(page.all(".#{classname}", text: email).count).to eq 1
end

Given /^I wait for (\d+) seconds?$/ do |n|
  sleep(n.to_i)
end