# puts "This is your calculator"
# puts "Which operator would you like?"

def add num1, num2
	num1 + num2
end

def subract num1, num2
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

puts "a - addition s - subtraction d - division m - multiplication pow - power of sqr - square root"


operator = gets.chomp

puts "Choose first number"
num1 = gets.chomp.to_f
puts "Choose second number"
num2 = gets.chomp.to_f


if operator == "a"
		result = add num1,num2

	elsif operator == "s"
		result = subract num1,num2

	elsif operator == "d"
		result = divide num1,num2

	elsif operator == "m"
		result = multiply num1,num2

	elsif operator == "pow"
		result = power_of num1,num2

	elsif  operator == "sqr"
		result = square_root num1
end

puts result



