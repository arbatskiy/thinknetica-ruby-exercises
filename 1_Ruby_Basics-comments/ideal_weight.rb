puts "Hello, what's your name?"
user_name = gets.chomp

puts "Nice to meet you, #{user_name}. What is your height?"
user_height = gets.chomp.to_i

ideal_weight = user_height - 110

if ideal_weight > 0
    puts "#{user_name}, your ideal_weight is #{ideal_weight}!"
else 
    puts "Cheers! Your weight is ideal already!"
end