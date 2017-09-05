require_relative "calculator"

puts "Hello man !"
operation =''
while operation != 'end'

  puts "Give me a first number!"
    number_1 = gets.chomp
  puts "Give me a second number !"
    number_2 = gets.chomp
  puts "What operation do you want to do ??? (+, -, *, /)"
  operation  = gets.chomp

  if %w(+ - * /).include? operation
    result = calculate(number_1, number_2, operation)
    "your result is #{result}. Tape 'end' to exit."
  else
    operation = "end"
  end
end
