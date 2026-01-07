module Mathematics
    PI = 3.14

    def Mathematics.area_of_circle(radius)
        area = PI * radius * radius
    return area
    end
end 

puts Mathematics.area_of_circle 7
puts "Value of PI : #{Mathematics::PI}"

