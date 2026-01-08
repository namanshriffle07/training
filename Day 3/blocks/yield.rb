def naman
    puts "Hello this line will execute at first "
    yield
    puts "This will come after printing my name"
end

naman{puts "NAMAN BHAWSAR"}