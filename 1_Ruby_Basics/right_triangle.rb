puts "Input side A of the triangle"
a = gets.chomp.to_f
puts "Input side B of the triangle"
b = gets.chomp.to_f
puts "Input side C of the triangle"
c = gets.chomp.to_f

sides = [a, b, c].sort

cat1 = sides[0]
cat2 = sides[1]
hypotenuse = sides[2]

message = if a == b && b == c
   "equilateral and isosceles."
elsif hypotenuse ** 2 == cat1 ** 2 + cat2 ** 2
    cat1 == cat2 ? "right and isosceles." : "right." 
elsif cat1 == cat2
   "isosceles."
end

puts "The triangle is #{message}"