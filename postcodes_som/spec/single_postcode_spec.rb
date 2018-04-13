require 'spec_helper'

describe 'SinglePostcode' do

	context 'requesting infomration on a single postcode works correctly' do

		before(:all) do
			@postcodes_single = Postcodesio.new.single_postcode_service
			@postcodes_single.get_single_postcode_response('EN14RF')
		end

		it "should respond with a status message of 200" do
			expect(@postcodes_single.get_status_code_from_body_response).to eq 200
		end

		it "should have a results hash" do
	      expect(@postcodes_single.get_class_from_body_response).to eq Hash
	    end

	end

end