puts "Welcome to the Good Sir Beer Emporium!"

def choice
	puts "To get a list of the beers currently in inventory, type 'list'"
	puts "To add a beer to the inventory, type 'add'"
	puts "To remove a beer from the inventory, type 'delete'"
	puts "To update a quantity, type 'update'"
	puts "To check the inventory count for a single beer, type 'check'"

	user_action = gets.chomp

	def response(user_action)

		beer_count = {
		"NoDa Brewery Coco Loco" => 12,
		"OMB Copper" => 11,
		"Birdsong Jalapeno IPA" => 9,
		"Triple C Golden Boy Blonde" => 7,
		"Sugar Creek White Ale" => 3
		}

		if user_action == "add"
			# to add a beer to the inventory list
			puts "Please enter the name of the beer to add:"
			add_beer = gets.chomp
			# to add the beer's quantity to the list
			puts "Please enter the quantity of cases in stock:"
			add_qty = gets.chomp.to_i
			beer_count[add_beer] = add_qty
			puts "#{add_qty} cases of #{add_beer} have been added to inventory!"
			# show the new inventory list
			beer_count.each do |key, value|
				puts "There are #{value} cases of #{key} in stock."
			end
		elsif user_action == "delete"
			puts "Which beer would you like to delete from inventory?"
			user_delete = gets.chomp
			beer_count.delete(user_delete)
			puts "#{user_delete} has been removed from inventory!"
			puts beer_count
		elsif user_action == "list"
			beer_count.each do |key, value|
				puts "There are #{value} cases of #{key} in stock."
			end
		elsif user_action == "update"
			puts "Which beer would you like to update?"
			update_beer = gets.chomp
			puts "And what is the new quantity?"
			update_qty = gets.chomp
			beer_count[update_beer] = update_qty
			puts "The #{update_beer} quantity has been updated to #{update_qty} cases!"
			puts beer_count
		elsif user_action == "check"
			puts "Which beer would you like to check the inventory count of?"
			beer_check = gets.chomp
			puts "There are #{beer_count[beer_check]} cases of #{beer_check} in stock"
		else
			puts "You've entered an invalid command"
		end
	end
	puts response(user_action)
end

puts choice

puts "Would you like to do something else? (y/n)"
user_cont = gets.chomp

if user_cont == "y"
	puts choice
elsif user_cont == "n"
	abort("Thank you for utilizing the Good Sir Beer Emporium inventory program. Goodbye!")
else
	abort("Sorry, didn't get that..... gotta run!")
end