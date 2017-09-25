# puts "This is your calculator"
# puts "Which operator would you like?"

def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def multiply num1, num2
	num1 * num2
end

def divide num1, num2
	num1 /  num2
end

def power_of num1, num2
	num1 ** num2
end

def square_root num1
	Math.sqrt(num1)
end

def calculate operation, *numbers
	case operation
		when "a"
			(add numbers[0], numbers[1]).to_i

		when "s"
			(subtract numbers[0], numbers[1]).to_i

		when "m"
			(multiply numbers[0], numbers[1]).to_i

		when "d"
			(divide numbers[0], numbers[1]).to_i

	end
end

def input_numbers operation
	puts "Enter the first number:"
	num1 = gets.chomp.to_f

	if operation != 'r'
		puts "Enter the second number:"
		num2 = gets.chomp.to_f

		puts calculate operation, num1, num2
	else
		puts calculate operation, num1
	end
end

puts "Do you want to do (a)dd, (s)ubtract, (m)ultiply or (d)ivide?"
operation = gets.chomp

input_numbers operation



# def operator_choice
# 	puts "a - addition s - subtraction d - division m - multiplication pow - power of sqr - square root"
# 	operator = gets.chomp
# end

# def number_choice order
# 	puts "Choose #{order} number"
# 	num = gets.chomp.to_f
# end

# number1 = number_choice "first"
# number2 = number_choice "second"
# puts "#{number1} #{number2}"

# if operator_choice == "a"
# 	result = add number1,number2

# elsif operator_choice == "s"
# 	result = subtract number1,number2

# elsif operator_choice == "d"
# 	result = divide number1,number2

# elsif operator_choice == "m"
# 	result = multiply number1,number2

# elsif operator_choice == "pow"
# 	result = power_of number1,number2

# elsif  operator_choice == "sqr"
# 	result = square_root number1
# end

# puts result



