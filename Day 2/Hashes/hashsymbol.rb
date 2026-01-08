result = {
  ritesh:"Pass",
  suraj:"Fail",
  naman:"Pass",
  shubham:"Pass"
}

for i in result.keys
  if(result[i]=="Fail")
    puts "#{i} is looser"
  else
    puts "#{i} is winner"
  end
end