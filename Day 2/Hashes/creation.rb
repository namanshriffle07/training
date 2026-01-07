months = Hash.new("Months")
months = {
    1 => "January",
    2 => "February",
    3 => "March",
    4 => "April",
    5 => "May",
    6 => "June",
    7 => "July",
    8 => "August",
    9 => "September",
    10 => "October",
    11 => "November",
    12 => "December"
}

months.each_key {|key|
    if key == 8
        puts "Its august!"
    else
        puts "Its a boring month #{months[key]}"
    end 
}



