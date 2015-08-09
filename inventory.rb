beer_count = {
	"NoDa Brewery Coco Loco" => 12,
	"OMB Copper" => 11,
	"Birdsong Jalapeno IPA" => 9,
	"Triple C Golden Boy Blonde" => 7,
	"Sugar Creek White Ale" => 3
}

puts "To get a list of the beers currently in inventory, type 'print'"
puts "To add a beer to the inventory, type 'add'"
puts "To remove a beer from the inventory, type 'delete'"
user_action = gets.chomp

if user_action == "add"
	# to add a beer to the inventory list
	puts "Please enter the name of the beer to add:"
	add_beer = gets.chomp

	puts "Please enter the quantity of cases in stock:"
	add_qty = gets.chomp.to_i

	beer_count[add_beer] = add_qty
	puts "#{add_qty} cases of #{add_beer} have been added to inventory"
	puts beer_count
elsif user_action == "delete"
	puts "Which beer would you like to delete from inventory?"
	user_delete = gets.chomp
	beer_count.delete(user_delete)
	puts "#{user_delete} has been removed from inventory!"
	puts beer_count
else
	puts "You've entered an invalid command"
end