require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumQAToolsForm.new
    @driver.visit_practice_form
  end

  context 'testing practice automation form successful submission' do

    it 'should accept a first name' do
      expect(@driver.input_first_name('Alex')).to eq 'Alex'
    end

    it 'should accept a last name' do
      expect(@driver.input_last_name('King')).to eq 'King'
    end

    it 'should accept a gender of Male or Female' do
      expect(@driver.select_gender('Female')).to eq true
    end

    it 'should accept a date' do
      expect(@driver.input_date('16/07/2018')).to eq '16/07/2018'
    end

    it 'should accept a profession' do
      expect(@driver.select_profession('Manual Tester')).to eq true
      expect(@driver.select_profession('Automation Tester')).to eq true
    end

    it 'should accept a continent' do
      expect(@driver.select_continent('Antartica')).to eq true
    end
  end

end
