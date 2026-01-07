puts "Program to show all the operators\n\n"

puts "Arithmetic Operators "
# the Arithmetic Operators
# Addition
puts ("Addition:")
puts (10 + 20)

# Subtraction
puts ("Subtraction:")
puts (40 - 20)

# Division
puts ("Division:")
puts (100 / 20)

# Multiplication
puts ("Multiplication:")
puts (10 * 20)

# Modulus
puts ("Modulus:")
puts (20 % 7)

# Exponent
puts ("Exponent:")
puts (2 ** 4)




# the Comparison Operators
puts "\n\nComparison Operators"
 
puts "Equal To Operator:"
puts (10 == 20)
 
puts "Not Equal To Operator:"
puts (40 != 20)
 
puts "Greater than Operator"
puts (100 > 20)
 
puts "Less than Operator"
puts (10  < 20)
 
puts "Less than Equal To Operator"
puts (2  <=  5)

puts "Greater than Equal To Operator"
puts (2  >=  5)
 
puts "Combined combination operator"
puts(20 <=> 20)
puts(10 <=> 20)
puts(20 <=> 10)

# Ruby program to demonstrate 
# the Logical Operators
 
puts "\n\nProgram to for Logical Operatorsr"
# Variables
a = 10
b = 20
c = 30

# using && operator
if a == 10 && b == 20 && c == 30
    puts "Logical AND Operator"
    puts result = a * b * c
end

# using || operator
puts "Logical OR operator"
if a == 10 || b == 20
    puts result = a + b + c
end

# using ! operator
puts "Logical Not Operator"
puts !(true)