
module NewModule
    class A 
        def initialize(name,age,degree)
            @name = name
            @age = age
            @degree = degree 
        end

        def putdata
            puts "Name is #{@name}"
            puts "Age is #{@age}"
            puts "Degree is #{@degree}"
        end
        
    end
    obj = NewModule::A.new("Naman Bhawsar",22,"MCA")
    obj.putdata
end

=begin
scope resolution is used 
to define the scope of the any variable where it 
is defined
=end

