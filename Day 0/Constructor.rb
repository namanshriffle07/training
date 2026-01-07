class Student
	def initialize(name,age,degree)
		@name = name
		@age = age
		@degree = degree
	end


	def printdetails
		puts "Name is #{@name}"
		puts "Age is #{@age}"
		puts "Degree is #{@degree}"
	end
end

aa = Student.new("Naman Bhawsar",22,"MCA")
aa.printdetails