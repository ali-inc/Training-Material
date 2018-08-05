require 'mac/say'

talker = Mac::Say.new(voice: :alex, rate: 200)
talker.say string: 'Ruby Rocks!'
