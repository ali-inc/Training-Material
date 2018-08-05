require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_status
    @single_postcode['status']
  end

  def get_result
    @single_postcode['result']
  end

  def get_postcode
    get_result['postcode']
  end

end
