require 'httparty'
require 'json'

class MultiplePostcodeService

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcode_response(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

end

multiple = MultiplePostcodeService.new

# puts multiple.get_multiple_postcode_response(["EN14RF", "EN14QX"])