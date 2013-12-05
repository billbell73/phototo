require 'spec_helper'

describe 'Photos API' do 
	context 'api/photos' do
		before(:all) do
			create_list(:photo, 5)
			get 'api/photos', {}, 'HTTP_HOST' => 'api.example.com'

			@response, @json = response, JSON.parse(response.body)
		end

		it 'returns a success status code' do
      expect(@response).to be_success
 		end

 		it 'returns 5 objects' do
      expect(@json.length).to eq 5
 	  end

 	  it 'does not reveal the user email' do
 	    expect(@json.last).not_to include 'email'
 		end

 		it 'shows the photo caption' do
 			expect(@json.last['caption']).to eq 'some_caption'
 	  end

	end
	
end


