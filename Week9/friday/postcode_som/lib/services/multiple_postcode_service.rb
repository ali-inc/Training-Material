require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

end
