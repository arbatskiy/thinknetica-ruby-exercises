arr = []

# for num in (10..100)
#     arr << num if num % 5 == 0
# end

(10..100).step(5) do |num|
    arr << num
end