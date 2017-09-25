#Operations
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

#Different calculation operations
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

		when "p"
			(power_of numbers[0], numbers[1]).to_i

		when "r"
			(square_root numbers[0]).to_i

	end
end


#Get user input for two numbers if they didn't select to Square root.
	#If they did then they are only asked to input one number
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


#Selecting different calculator types
puts "Do you want to use the (b)asic calculator or (a)dvanced calculator?"

calc_type = gets.chomp


if calc_type == "b"

	puts "Do you want to (a)dd, (s)ubtract, (m)ultiply or (d)ivide?"

	operation = gets.chomp

	input_numbers operation
elsif calc_type == "a"

	puts "Do you want to (p)ower or square (r)oot?"

	operation = gets.chomp
	
	input_numbers operation

end





