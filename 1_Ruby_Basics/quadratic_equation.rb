puts "Input A"
a = gets.chomp.to_f
puts "Input B"
b = gets.chomp.to_f
puts "Input C"
c = gets.chomp.to_f

d = b ** 2 - 4 * a * c

if d > 0
    x1 = (-b + Math.sqrt(d)) / 2 * a
    x2 = (-b - Math.sqrt(d)) / 2 * a
    puts "D = #{d}, x1 = #{x1}, x2 = #{x2}"
elsif d == 0
    x1 = -b / 2 * a
    puts "D = #{d}, x1 = x2 = #{x1}"
else
    puts "The equation can't be solved"
end