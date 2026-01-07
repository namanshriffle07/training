def hello(*args)
    puts "Hello"
    for i in 0...args.length
        puts args[i]
    end
end 


hello "Ritesh","Naman","Ajay","Shruti","Paridhi"