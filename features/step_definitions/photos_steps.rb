Given(/^that there is a photo with caption "(.*?)"$/) do |caption|
  Photo.new(:caption => caption, user: create(:user)).save!
end

Given(/^that there is a photo that has been uploaded$/) do
  @user = create(:user)
  create(:photo, user: @user)
end

Then(/^I should see (\d+) photos?$/) do |number|
  # pic = page.find 'img.uploaded-pic'
 	# expect(pic['alt']).not_to eq 'Missing'
 	expect(page).to have_css 'img.uploaded-pic', count: number
end

Given(/^I attach the "(.*?)" file$/) do |filename|
  attach_file 'Pic', Rails.root.join("features/images/#{filename}")
end

Then(/^I should see a photo$/) do
  pic = page.find 'img.uploaded-pic'
 	expect(pic['alt']).not_to eq 'Missing'
end

Then(/^I should see that image and a location map for that image$/) do
  expect(page).to have_css 'image'
end

Given(/^I am logged in and on the upload photo form$/) do
  login_as(create(:user), :scope => :user)
  visit('/photos/new')
end
