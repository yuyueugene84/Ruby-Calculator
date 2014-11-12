require 'pry'

def say(msg)
  puts "-----#{msg}-----"
end

def result(answer)
  puts "Your answer is: #{answer}"
end

say "Welcome to calculator, please choose your operation:"
say "(1)Addtion(+) (2)Substraction(-) (3)Multiply(*) (4)Division(/)"

operator = gets.chomp

#if oeprator is not from 1-4, keep asking
while ![1, 2, 3, 4].include?(operator.to_i)
    #binding.pry
    say "Please enter a valid operator, from 1 - 4:"
    operator = gets.chomp
end

say "Please enter first number:"
num1 = gets.chomp

while num1.to_i == 0
    #binding.pry
    say "Please enter a valid number:"
    num1 = gets.chomp
end

say "Please enter second number:"
num2 = gets.chomp

while num2.to_i == 0
    #binding.pry
    say "Please enter a valid number:"
    num2 = gets.chomp
end

if operator == "1"
  answer = num1.to_i + num2.to_i
  result(answer)
elsif operator == "2"
  answer = num1.to_i - num2.to_i
  result(answer)
elsif operator == "3"
  answer = num1.to_i * num2.to_i
  result(answer)
elsif operator == "4"
  answer = num1.to_f / num2.to_f
  result(answer)
else
  puts "please enter a valid oepration!"
end
