require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def get_all_prices
    price_array = []
    @menu.search('price').each do |price|
      price_array << price.text.gsub('£','').to_f
    end
    price_array
  end

  def get_calories
    @menu.search('calories')
  end

  def get_food
    @menu.search('food')
  end

  def get_name
    @menu.search('name')
  end

  def get_description
    @menu.search('description')
  end

  def get_name_and_calories
    arr = []
    names = get_name
    calories = get_calories
    (names.length).times do |i|
      arr << [names[i].text, calories[i].text.to_i]
    end
    arr
  end

  def get_name_and_description
    arr = []
    names = get_name
    descriptions = get_description
    (names.length).times do |i|
      arr << [names[i].text, descriptions[i].text]
    end
    arr
  end

  # def get_items *term
  #   arr = []
  #   term.each_with_index do |t, i|
  #     element = @menu.search(t).text
  #     element.length.times do |e|
  #       arr[e] << [element[e]]
  #     end
  #   end
  #   arr
  # end

end

# x = GuiseppesMenu.new
# puts x.get_items('name')
