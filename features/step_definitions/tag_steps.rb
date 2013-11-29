Given(/^that there are two photos one tagged "(.*?)" and the other not$/) do |tag_content|
	user = create(:user)
	create(:photo, caption: 'CAT', user: user)
  # create(:photo, caption: 'PEAS', user: user, :tags => [Tag.create(content: tag_content)])
  create(:photo, caption: 'PEAS', user: user, :tags => [create(:tag, content: tag_content)])
end

Then(/^I should only see the photo tagged "(.*?)"$/) do |arg1|
  expect(page).to have_content 'PEAS'
	expect(page).not_to have_content 'CAT'
end