require 'spec_helper'

describe 'Testing Budget Watch App' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    start_driver
    @budgetwatch = BudgetWatch.new
  end

  after(:all) do
    driver_quit
  end

  it 'should load successfully' do
    expect(find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to be true
    # expect((@budgetwatch.main_page.find_settings).displayed?).to be true
  end

  it 'should have the budget option on the main landing page' do
    expect(find_element(:id, "protect.budgetwatch:id/menu").displayed?).to be true
  end

  it 'should access the budget page' do
    find_element(:id, "protect.budgetwatch:id/menu").click
    expect(find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to be true
  end

  it 'should be able to add a budget' do
    find_element(:id, "protect.budgetwatch:id/action_add").click
    find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys "firstBudget"
    find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys "3400"
    find_element(:id, "protect.budgetwatch:id/action_save").click
    expect(find_element(:id, "protect.budgetwatch:id/budgetName").displayed?).to be true

  end


end
