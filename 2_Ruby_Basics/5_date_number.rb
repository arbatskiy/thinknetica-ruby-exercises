puts "Enter day, month and year"
day = gets.chomp.to_i
month = gets.chomp.to_i
year = gets.chomp.to_i

puts "Error! Day can be only 1-31" unless (1..31) === day
puts "Error! Month can be only 1-12" unless (1..12) === month

leap = ( year % 4 == 0 && year % 100 != 0 ) || year % 400 == 0

day_number = day

for num in (1...month) do
    case num
    when 2
        day_number += leap ? 29 : 28
    when 4, 6, 9, 11
        day_number += 30
    else
        day_number += 31
    end
end