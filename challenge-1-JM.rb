# Joao Magalhaes
#

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

# Question 1
carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

phrase_part_1 = "#{carl[:words][2].capitalize} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} "
phrase_part_2 = "#{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2].first} #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]}"
puts phrase_part_1 + phrase_part_2

# Question 2
ghosts = [
            {:name => 'Inky', :age => '4', :loves => 'reindeers', :net_worth => '2'},
            {:name => 'Pinky', :age => '5', :loves => 'garden tools', :net_worth => '14'},
            {:name => 'Binky', :age => '7', :loves => 'ninjas', :net_worth => '18.03'},
            {:name => 'Clyde', :age => '6', :loves => 'yarn', :net_worth => '0'}
         ]


ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end

# Question 3
require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.

breed_names = dog_breeds['message']

breed_names.each do |breed_name|
  puts "* #{breed_name[0].capitalize}"
  if breed_name[1].any?
    breed_name[1].each do |sub_breed|
    puts "  * #{sub_breed.capitalize}"
    end
  end
end

# Question 4
