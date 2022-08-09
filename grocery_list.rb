## This groundbreaking technology improves the grocerys shopping experience for millions of people across the globe!
def create_list
    print "What is the name of your list? "
    name = gets.chomp
    hash = {name:name, items: []}
    return hash 
end
    

def add_list_item
    print "What is the name of the item you want to add? "
    item_name = gets.chomp
    
    print "How many do you need? "
    quantity = gets.chomp.to_i
    
    hash = {name: item_name, quantity: quantity}
    return hash
end

def remove_list_item(list)
    puts "Select the item you would like to remove: "
    count = 0
    list[:items].each do |item|
        count += 1
        puts "[#{count}]" + item[:name]
    end
    selection = gets.chomp.to_i
    list[:items].delete_at(selection - 1)
    print_separator()
    puts "Item successfully removed."
    print_separator()
end
  
def print_list(list)
   puts "List: #{list[:name]}"
   print_separator()
   list[:items].each do |item|
     puts "\tItem: " + item[:name] + "\t\t\t\t\t" +
          "Quantity: " + item[:quantity].to_s
   end
  print_separator()
end
  
  
def print_separator(character="-")
    puts character * 80
end

list = create_list()
add_additional_items = true
while add_additional_items
    puts "Please choose an option \n [1]Print list\n [2]Add item\n [3]Remove item\n [4]Exit"
    option = gets.chomp.to_i
    if option == 1
        print_list(list)
    elsif option == 2
            list[:items].push(add_list_item())
    elsif option == 3
            remove_list_item(list)
    elsif option == 4
        add_additional_items = false
        puts "Thank you for using our grocery list program. Here's a copy of your list."
        print_list(list)
    else 
        puts "Invalid Selection. Please enter the number that corresponds to one of the following selections\n [1]Print list\n [2]Add item\n [3]Remove item\n [4]Exit"
        option = gets.chomp.to_i
    end
end



