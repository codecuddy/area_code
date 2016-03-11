dial_book = {
    "baltimore" => "410",
    "philadelphia" => "610",
    "omaha" => "402",
    "dallas" => "817",
    "phoenix" => "480",
    "boston" => "339",
    "chicago" => "217",
    "seattle" => "206",
    "miami" => "305",
    "denver" => "720"
}

# give users the list of cities in the dictionary
def get_city_name(cities)
  cities.each { |k, v| puts k }    
end

# finds area code, key, based on user input for city
def get_area_code(cities, area_code)
    cities[area_code]
end

#loop
loop do 
  puts "Do you want to look up an area code for another city? (yes/no)"

    answer = gets.chomp
    if answer != "yes"
        break
    end
 
  #method list cities in dictionary and ask their choice
  puts "Which of the listed cities would you like to know the area code for?"
  get_city_name(dial_book)
  
  #save their city of choice in the variable 'city'
  puts "Enter the city of your choice"
  city = gets.chomp

  #check to see if their city of choice is in the dictionary
  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else 
    puts "You entered a city name that is not currently in our dictionary, please 
    check to make sure you spelled it correctly."
  end

end
