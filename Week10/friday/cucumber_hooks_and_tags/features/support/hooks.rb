Before do
  @users = ["Ali","Seb","T"]
end

Before('@tag1') do
  puts 'this will happen before every test'
end

After do
  puts 'Look at me. I\'m a tester!!!'
end
