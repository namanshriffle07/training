class Users 
  def signup(username,password)
    registered_users = File.read("Database/username.txt")    

    present = registered_users.include?(username)

    if(present == true)
      puts "Username already present please try the different one\n"
      return true
    else 
      File.open("Database/username.txt","a") do |file|
        file.puts(username)
      end
      File.open("Database/password.txt","a") do |file|
        file.puts(password)
      end
      puts "User registered successfully"
      return false
    end
  end
  
  def login(username,password)
    registered_users = File.read("Database/username.txt")
    
    present_username = registered_users.include?(username)
    present_password = registered_users.include?(password)
    if(present_username && present_password)
      puts "User logged in successfully"
      return false
    else 
      puts "Please enter a valid credentials"
      return true
    end
  end
end

user = Users.new

puts "Please enter your choice ! \n1. Sign Up\n2. Log in\n3. Exit"
choice = gets().to_i

case choice
  
when 1
  # Taking user inputs for Sign Up
  userexist = true

  while(userexist)
    puts "Enter your username"
    username = gets().to_s.strip
    puts "Enter your password"
    password = gets()
    userexist = user.signup(username,password)
  end
  
when 2
  #  Taking user inputs for Log in
  
  invalid = true
  
  while(invalid)
    puts "Enter your username"
    username = gets().to_s.strip
    puts "Enter your password"
    password = gets()    
    invalid = user.login(username,password)
  end
else 
  puts "Invalid choice"
end
