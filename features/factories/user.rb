FactoryGirl.define do
	factory :user do
		email "willbell@gmail.com"
    password "qwertyui"
    password_confirmation { password }
 	 end
end
