When(/^I buy (\d+) prints? of the photo$/) do |number|
  create_list(:order, number.to_i, user: @user)
  # 2.times { create(:order, user: @user) }
  # create(:order, user: @user)
end

When(/^I log in as an administrator$/) do
  login_as(create(:user, email: "b@b.com"), :scope => :admin)
end

When(/^I am on the administrator index page$/) do
  visit '/charges'
end

Then(/^I can see that (\d+) prints have been ordered by "(.*?)"$/) do |number, email|
  expect(page.all('td', text: email).count).to eq number.to_i
end

Given(/^no emails have been sent$/) do
  clear_emails
end

Then(/^an email should be sent to "(.*?)"$/) do |email_address|
  open_email email_address
 	expect(current_email).not_to be_nil
end

Then(/^the email should contain "(.*?)"$/) do |content|
  expect(current_email).to have_content content
end