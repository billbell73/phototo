When(/^I buy (\d+) prints of the photo$/) do |number|
  create(:order, user: @user)
  create(:order, user: @user)
end

When(/^I log in as an administrator$/) do
  login_as(create(:user, email: "b@b.com"), :scope => :admin)
end

When(/^I am on the administrator index page$/) do
  visit '/charges'
end

Then(/^I can see that (\d+) prints have been ordered by "(.*?)"$/) do |number, email|
  
end
