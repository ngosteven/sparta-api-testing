require 'httparty'
require 'json'

class SinglePostcodeService
	
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode_response(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

end

single = SinglePostcodeService.new

# puts single.get_single_postcode_response('EN14RF')