require 'httparty'
require 'json'

class PostcodeIO
  include HTTParty

  attr_accessor :single_result, :multiple_results

  base_uri 'http://api.postcodes.io'

  def get_single_postcode postcode

    @single_result = JSON.parse(self.class.get("/postcodes/#{postcode}").body)

    puts self

  end

  def get_multiple_postcode postcode_array

    @multiple_results = JSON.parse(self.class.post("/postcodes/", :body => {"postcodes": postcode_array}).body)

  end

end

x = PostcodeIO.new
puts x.get_multiple_postcode ['b111by', 'yo317ss', 's730eg']
