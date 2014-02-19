Given(/^I am not authenticated$/) do
  visit('/users/sign_out')
end

Given(/^there is a user with email "(.*?)" and password "(.*?)"$/) do |email, password|
	create(:user, email: email, password: password)
end

Given(/^I am a new, authenticated user with email "(.*?)" and password "(.*?)"$/) do |email, password|
  @user ||= create(:user)
  login_as(@user, :scope => :user)
end

Given(/^I am logged in as willbell$/) do
  @user ||= create(:user)
  login_as(@user, :scope => :user)
end
