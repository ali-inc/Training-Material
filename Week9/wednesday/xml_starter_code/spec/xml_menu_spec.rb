require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    @xml_menu.get_all_prices.each do |price|
      expect(price).to be < 10
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it

    # @xml_menu.get_food.length.times do |i|
    #   if @xml_menu.get_name[i].text != 'Full Breakfast'
    #     expect(@xml_menu.get_calories[i].text.to_i).to be < 1000
    #   end
    # end

    # @xml_menu.get_name_and_calories.each do |name, calorie|
    #   if name != 'Full Breakfast'
    #     expect(calorie).to be < 1000
    #   end
    # end

    @xml_menu.get_food.each do |food|
      if food.first_element_child.text != 'Full Breakfast'
        expect(food.elements[3].text.to_i).to be < 1000
      end
    end

  end

  it "should have all waffle dishes stating you get two waffles" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
    @xml_menu.get_name_and_description.each do |name, description|
      if name.downcase.include? "two"
        expect(description.downcase).should include "two"
      end
    end
  end

end
