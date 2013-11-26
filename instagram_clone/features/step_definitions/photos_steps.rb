Given(/^that there is a photo with caption "(.*?)"$/) do |caption|
  Photo.new(:caption => caption, :user_id => 1).save!
end

Given(/^that there is a photo that has been uploaded$/) do
  pic = File.open(Rails.root.join('features/images/peas.jpg'))
  Photo.new(:caption => 'heavens', :user_id => 1, :pic => pic).save!
end

Then(/^I should see a photo$/) do
  pic = page.find 'img.uploaded-pic'
 	expect(pic['alt']).not_to eq 'Missing'
end

Given(/^I attach the "(.*?)" file$/) do |filename|
  attach_file 'Pic', Rails.root.join("features/images/#{filename}")
end