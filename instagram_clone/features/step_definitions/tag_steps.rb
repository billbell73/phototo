Given(/^that there are two photos one tagged "(.*?)" and the other not$/) do |tag_content|
	pic1 = File.open(Rails.root.join('features/images/cat.jpg'))
	pic2 = File.open(Rails.root.join('features/images/peas.jpg'))
	user = create(:user)
  Photo.new(:caption => 'CAT', user: user, :pic => pic1).save!
  Photo.new(:caption => 'PEAS', user: user, :pic => pic2, :tags => [Tag.create(content: tag_content)]).save!

  #create(:photo, tags: [create(:tag)])
end

Then(/^I should only see the photo tagged "(.*?)"$/) do |arg1|
  expect(page).to have_content 'PEAS'
	expect(page).not_to have_content 'CAT'
end