puts "//////////////////Welcome to instacart//////////////////////////"
puts "________________________________________________________________"
store = {
  kiwi: 1.25,
  banana: 0.5,
  mango: 4,
  asparagus: 9
}
cart = []
choice = ""

while choice != :quit
  puts "In our store today:"
  store.each { |key, value| puts "#{key} : #{value}"}
  puts "________________________________________________________________"
  puts "Which item? (or 'quit' to checkout)"
  choice = gets.chomp.downcase.to_sym
  puts "________________________________________________________________"

  if store.key?(choice)
    cart << choice
  else
   puts "Error, this items is not avaliable"
  end
end

bill = cart.map { |item| store[item] }.reduce(:+)

puts "Your cart is:"
puts cart

kiwi_count = cart.count(:kiwi)
banana_count = cart.count(:banana)
mango_count = cart.count(:mango)
asparagus_count = cart.count(:asparagus)

puts "Number of kiwi : #{kiwi_count}. Price : #{kiwi_count * store[:kiwi]}" if kiwi_count != 0
puts "Number of banana : #{banana_count}. Price : #{banana_count * store[:banana]}" if banana_count != 0
puts "Number of mango : #{mango_count}. Price : #{mango_count * store[:kiwi]}" if mango_count != 0
puts "Number of asparagus : #{asparagus_count}. Price : #{asparagus_count * store[:asparagus]}" if asparagus_count != 0





puts "The bill is : #{bill}"
