shopping_card = Hash.new

loop do
    puts "Please, enter Product Name."
    name = gets.chomp.downcase
    break if name == "stop"
    
    puts "Please, enter Price"
    price = gets.chomp.to_f.round(2)
    puts "Please, enter Quantity"
    quantity = gets.chomp.to_f
    
    # Вот ЭТО выглядит не очень, но ничего лучше не придумал :(
    unless shopping_card[name.to_sym]
        shopping_card[name.to_sym] = { price => quantity }
    else
        unless shopping_card[name.to_sym][price]
            shopping_card[name.to_sym][price] = quantity
        else
            shopping_card[name.to_sym][price] = shopping_card[name.to_sym][price] + quantity
        end
    end
end

puts shopping_card

total = 0

shopping_card.each do |name, params|
    params.each do |single_price, single_quantity|
        subtotal = (single_price * single_quantity).round(2)
        total += subtotal
        puts "#{name.capitalize}: $#{single_price} * #{single_quantity} = $#{subtotal}"
    end
end

puts "Total: $#{total}"