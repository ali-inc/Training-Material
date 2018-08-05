Given("I have data table") do |table|
  @table = table.raw
end

Then("I should be able to print out all the names and ages") do
  @table.each do |row|
    puts "#{row[0]} is #{row[1]} years old"
  end
end
