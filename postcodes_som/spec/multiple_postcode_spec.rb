require 'spec_helper'

describe 'MultiplePostcode' do

	context 'requesting infomration on a multiple postcode works correctly' do

		before(:all) do
			@postcodes_array = ['EN14RF','EN14QX']
			@postcodes_multiple = Postcodesio.new.multiple_postcode_service
			@postcodes_multiple.get_multiple_postcode_response(@postcodes_array)
		end

		it "should respond with a status message of 200" do
			expect(@postcodes_multiple.get_status_code_from_body_response).to eq 200
		end

	end

end