Given(/^I am not authenticated$/) do
  visit('/users/sign_out')
end

Given(/^there is a user with email "(.*?)" and password "(.*?)"$/) do |email, password|
	create(:user, email: email, password: password)
end

Given(/^I am a new, authenticated user with email "(.*?)" and password "(.*?)"$/) do |email, password|
  @user ||= create(:user)
  login_as @user
  # visit '/users/sign_in'
  # fill_in "user_email", :with => email
  # fill_in "user_password", :with => password
  # click_button "Sign in"
end