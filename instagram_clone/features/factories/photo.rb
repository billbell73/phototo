FactoryGirl.define do
  factory(:photo) do
    title 'Default caption'	
    image Rails.root.join("features/images/peas.jpg").open
  end
end