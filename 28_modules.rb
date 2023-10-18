require_relative "29_square"
require_relative "30_rectangle" # can be used to include our custom module
require "uri"
require "net/http" # This module will automatically import the uri module

# Some modules is already included like Math and some are need to be included like uri and net/http 

# p URI.class
# p URI.methods
uri = URI.parse("https://www.google.com") # it will return the url
response =  Net::HTTP.get(uri)
# p response
p uri

p Math.class
p Math.sqrt(16)
p Math::PI

puts Rectangle.area(3, 5)
puts Square.area(3)

module LengthConversion
    def self.miles_to_feet(miles)
        miles*5280
    end

    def self.miles_to_inches(miles)
        feet = self.miles_to_feet(miles)
        feet * 12
    end
end

puts LengthConversion.miles_to_feet(20)
puts LengthConversion.miles_to_inches(10)

class Song
    include Downloadable
end

song = Song.new

p song.low_quality

p song.hello