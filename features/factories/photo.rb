FactoryGirl.define do
  factory(:photo) do
    caption 'Default caption'	
    pic Rails.root.join("features/images/peas.jpg").open
  end
end