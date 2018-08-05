require 'test_helper'

class FruitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fruit = fruits(:one)
  end

  test "should get index" do
    get fruits_url
    assert_response :success
  end

  test "should get new" do
    get new_fruit_url
    assert_response :success
  end

  test "should create fruit" do
    assert_difference('Fruit.count') do
      post fruits_url, params: { fruit: { carbohydrates: @fruit.carbohydrates, countries: @fruit.countries, energy: @fruit.energy, fat: @fruit.fat, name: @fruit.name, picture: @fruit.picture, protein: @fruit.protein } }
    end

    assert_redirected_to fruit_url(Fruit.last)
  end

  test "should show fruit" do
    get fruit_url(@fruit)
    assert_response :success
  end

  test "should get edit" do
    get edit_fruit_url(@fruit)
    assert_response :success
  end

  test "should update fruit" do
    patch fruit_url(@fruit), params: { fruit: { carbohydrates: @fruit.carbohydrates, countries: @fruit.countries, energy: @fruit.energy, fat: @fruit.fat, name: @fruit.name, picture: @fruit.picture, protein: @fruit.protein } }
    assert_redirected_to fruit_url(@fruit)
  end

  test "should destroy fruit" do
    assert_difference('Fruit.count', -1) do
      delete fruit_url(@fruit)
    end

    assert_redirected_to fruits_url
  end
end
