shopping_card = {}

loop do
    puts "Please, enter Product Name."
    name = gets.chomp.downcase
    break if name == "stop"
    
    puts "Please, enter Price"
    price = gets.chomp.to_f.round(2)
    puts "Please, enter Quantity"
    quantity = gets.chomp.to_f
    
    shopping_card[name.to_sym] = { price => quantity }
end

total = 0

shopping_card.each do |name, params|
    single_price = params.keys[0]
    single_quantity = params.values[0]
    subtotal = (single_price * single_quantity).round(2)
    total += subtotal
    puts "#{name.capitalize}: $#{single_price} * #{single_quantity} = $#{subtotal}"
end

puts "Total: $#{total}"