require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  new_arr = []
  spicy_foods.each do |food| 
    new_arr << food[:name]
  end
new_arr
end

def spiciest_foods(spicy_foods)
  spicy_foods.filter do |food| 
    food[:heat_level] > 5
  end
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
  chile = "🌶" * food[:heat_level]
  puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{chile}"
  end 
end


def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort do |food1, food2|
    food1[:heat_level] <=> food2[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  new_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(new_foods)
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  sum = 0
  spicy_foods.each {|food| sum += food[:heat_level]}
  sum/spicy_foods.length
end
