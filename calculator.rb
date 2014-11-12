require 'pry'

def say(msg)
  puts "-----#{msg}-----"
end

def print_result(answer)
  puts "Your answer is: #{answer}"
end

def check_number
  puts "Please enter a number:"
  num=gets.chomp
  while num.to_i == 0
    puts"Please enter a valid number:"
    num=gets.chomp
  end
  num.to_i
end

#-----------------Main Program starts here--------------------------
say "Welcome to calculator, please choose your operation:"
say "(1)Addtion(+) (2)Substraction(-) (3)Multiply(*) (4)Division(/)"

operator = gets.chomp

if ![1, 2, 3, 4].include?(operator.to_i)
  begin
    say "Please enter a valid operator, from 1 - 4:"
    operator = gets.chomp
  end while ![1, 2, 3, 4].include?(operator.to_i)
end

say "Please enter first number:"
num1 = check_number

say "Please enter second number:"
num2 = check_number

case operator

  when "1"
    answer = num1.to_i + num2.to_i
    print_result(answer)
  when "2"
    answer = num1.to_i - num2.to_i
    print_result(answer)
  when "3"
    answer = num1.to_i * num2.to_i
    print_result(answer)
  when "4"
    answer = num1.to_f / num2.to_f
    print_result(answer)
end
