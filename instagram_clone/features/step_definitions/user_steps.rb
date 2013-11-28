Given(/^I am not authenticated$/) do
  visit('/users/sign_out')
end

Given(/^there is a user with email "(.*?)" and password "(.*?)"$/) do |email, password|
	create(:user, email: email, password: password)
  # User.new(:email => email, :password => password, :password_confirmation => password).save!
end

# Given(/^I am a new, authenticated user$/) do
#   # email = 'testing@man.net'
#   # password = 'secretpass'
#   # User.new(:email => email, :password => password, :password_confirmation => password).save!

#   create(:user)
#   visit '/users/sign_in'
#   fill_in "user_email", :with => "willbell@gmail.com"
#   fill_in "user_password", :with => "qwertyui"
#   click_button "Sign in"
# end

Given(/^I am a new, authenticated user with email "(.*?)" and password "(.*?)"$/) do |email, password|
  @user || create(:user)
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"
end