require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open("xml_menu.xml"))
    # @menu = File.open("xml_menu.xml") { |f| Nokogiri::XML(f) }
  end

  def get_price
    @menu.search('price')
  end

  def get_name
    @menu.search('name')
  end

  def get_description
    @menu.search('description')
  end

  def get_calories_xpath
    @menu.xpath('/breakfast_menu/food/calories')
  end

  # this behave just like .search('name')
  def get_name_xpath
    @menu.xpath('//name')
  end

  def get_all_prices
    price_array = []
    @menu.search('price').each do |price|
      price_array << price.text.gsub('£','').to_f
    end
    price_array
  end

end


x = GuiseppesMenu.new
# puts x.get_price
# puts x.get_name
# puts x.get_description
# puts x.get_name_xpath
puts x.get_all_prices
