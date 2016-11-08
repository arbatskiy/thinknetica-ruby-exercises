puts "Input A"
a = gets.chomp.to_f
puts "Input B"
b = gets.chomp.to_f
puts "Input C"
c = gets.chomp.to_f

def check_right(base, a, b)
    if base * base == a * a + b * b
        return true
    else
        return false
    end
end

is_right = false # прямоугольный
is_isosceles = false # равнобедренный
is_equilateral = a == b && a == c # равносторонний
is_isosceles = true if is_equilateral

unless is_equilateral
    if a > b && a > c
        is_right = check_right(a, b, c)
        is_isosceles = b == c
    elsif b > a && b > c
        is_right = check_right(b, a, c)
        is_isosceles = a == c
    elsif c > a && c > b
        is_right = check_right(c, a, b)
        is_isosceles = a == b
    elsif a == b || b == c || a == c
        is_isosceles = true
    end
end

if is_equilateral
    puts "The triangle is equilateral."
end

if is_right 
    puts "The triangle is right."
end

if is_isosceles
    puts "The triangle is isosceles."
end