require_relative "../person"

describe Person do

  # create a new person before each test
  before :each do
      @person = Person.new
  end

  describe "name" do
      it "should be a string" do
          expect(@person.name).to be_an_instance_of String
      end
  end

  describe "age" do
      it "should be a number" do
          expect(@person.age).to be_an_instance_of Integer
      end
  end

  describe "children" do

      it "should be an array" do
          expect(@person.children).to be_an_instance_of Array
      end

      it "should have 4 children" do
          expect(@person.children.length).to eq(4)
      end
  end

  describe "address" do

    it "should be a hash" do
      expect(@person.address).to be_an_instance_of  Hash
    end

    it "should have a house_number field" do
      expect(@person.address).to have_key(:house_number)
    end

    it "should have a street field" do
      expect(@person.address).to have_key(:street)
    end

    it "should have a town field" do
      expect(@person.address).to have_key(:town)
    end

    it "should have a county field" do
      expect(@person.address).to have_key(:county)
    end

    it "should have a postcode field" do
      expect(@person.address).to have_key(:postcode)
    end

    it "should have an email_addresses field" do
      expect(@person.address).to have_key(:email_addresses)
    end

    it "should have a number for house_number" do
      expect(@person.address[:house_number]).to be_an_instance_of Integer
    end

    it "should have a string for street" do
      expect(@person.address[:street]).to be_an_instance_of String
    end

    it "should have a string for town" do
      expect(@person.address[:town]).to be_an_instance_of String
    end

    it "should have a string for county" do
      expect(@person.address[:county]).to be_an_instance_of String
    end

    it "should have a string for postcode" do
      expect(@person.address[:postcode]).to be_an_instance_of String
    end

    it "should have an array of email_addresses" do
      expect(@person.address[:email_addresses]).to be_an_instance_of Array
    end

    it "should have 2 email addresses" do
      expect(@person.address[:email_addresses].length).to eq(2)
    end

  end

  describe "password" do

    it "should be the user's second favourite thing joined with their birth town. With a space in between" do
      expect(@person.password).to eq("cat Richmond")
    end

  end

end
