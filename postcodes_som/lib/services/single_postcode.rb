require 'httparty'
require 'json'

class SinglePostcodeService

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode_response(postcode)
    @single_post_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_status_code_from_body_response
  	@single_post_data['status']
  end

  def get_class_from_body_response
  	@single_post_data.class
  end

end

# Instantiated the class
# single = SinglePostcodeService.new

# # Run our get method and stored the results in variable @single_post_data
# single.get_single_postcode_response('EN14RF')

# single.print_results

# puts single.get_single_postcode_response('EN14RF')