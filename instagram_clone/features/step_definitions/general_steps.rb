Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with=> value)
end

Given(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

When(/^show me the page$/) do
  save_and_open_page
end


