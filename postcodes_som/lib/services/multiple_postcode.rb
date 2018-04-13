require 'httparty'
require 'json'

class MultiplePostcodeService

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcode_response(postcodes_array)
    @multiple_post_data = JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status_code_from_body_response
  	@multiple_post_data['status']
  end

end

# multiple = MultiplePostcodeService.new

# puts multiple.get_multiple_postcode_response(["EN14RF", "EN14QX"])