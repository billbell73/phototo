FactoryGirl.define do
  factory(:photo) do
    caption 'Default caption'	
    pic Rails.root.join("features/images/peas.jpg").open
    location 'Ravenscourt Park, Hammersmith, London'
  end
end