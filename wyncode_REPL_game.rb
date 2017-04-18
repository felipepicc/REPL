def start_look_around
  puts "You see a closet, a safe, and a computer."
  puts "Options: inspect closet, inspect safe, inspect computer, return."
  option_two = gets.chomp
  case option_two
  when "inspect closet"
    start_closet
  when "inspect safe"
    start_safe
  when "inspect computer"
    start_computer
  when "return"
    start_game
  else
    puts "Please enter a valid option."
    start_look_around
  end # case option_two
end # def start_look_around

def start_closet
  puts "Inside the closet there is a wrist watch, and a notebook."
  puts "Options: inspect watch, inspect notebook, return."
  option_three = gets.chomp
  case option_three
  when "inspect watch"
    puts "The watch is showing 03:48."
    start_closet
  when "inspect notebook"
    puts "writen in the notebook: \"The time reverses in the machine.\" "
    start_closet
  when "return"
    start_look_around
  else
    puts "please enter a valid option."
    start_closet
  end # case option_three
end # start_closet

def start_safe
  puts "The safe is locked."
  puts "A 6 digit password is required to open the safe."
  puts "Options: enter password, return."
  option_four = gets.chomp
  case option_four
  when "enter password"
    start_safe_pass
  when "return"
    start_look_around
  else
    puts "please enter a valid option."
    start_safe
  end # case option_four
end # start_safe

def start_safe_pass
  puts "Enter the password number or type \"return.\""
  safe_pass = gets.chomp
  case safe_pass
  when "031908"
    puts "You oppened the safe and you found a key to the dor. CONGRATULATIONS, YOU ESCAPED!!"
  when "return"
    start_safe
  else
    puts "Wrong password. Try again."
    start_safe_pass
  end # case pass_num
end # start_safe_pass

def start_computer
  puts "The computer is protected by a 4 digit password."
  puts "Options: enter password, return."
  option_five = gets.chomp
  case option_five
  when "enter password"
    start_com_pass
  when "return"
    start_look_around
  else
    puts "please enter a valid option."
    start_computer
  end # case option_five
end # end_start_computer

def start_com_pass
  puts "Enter the password number or type \"return.\""
  com_pass = gets.chomp
  case com_pass
  when "8430"
    puts "You unlocked the computer."
    puts "In the screen, there is a date: March, 1908."
    start_com_pass
  when "return"
    start_computer
  else
    puts "Wrong password. Try again."
    puts "Hint: listen to the notebook."
    start_com_pass
  end
end # start_com_pass


# start of game
puts "GRAND ESCAPE 1"
puts "You wake up inside a room in an unknown location and no memory of how you got there."
puts "You have nothing but your clothes on."
puts "What do you want to do?"
def start_game
  puts "Options: look around, scream for help, hang myself."
  option_one = gets.chomp
  case option_one # choose one of the options
  when "look around"
    start_look_around
  when "scream for help"
    puts "There is no one that can hear you..."
    start_game
  when "hang myself"
    puts "You dont have the balls."
    start_game
  else
    puts "Please enter a valid option."
      start_game
  end # case option_one
end # def start_game
start_game
