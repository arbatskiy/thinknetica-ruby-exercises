letters = ('a'..'z').to_a.zip(1..26).to_h
# vowels = letters.select { |key, value| key.to_s.match(/[aouie]/) }
vowels = ['a', 'e', 'i', 'o', 'u']
vowels_freq = {}
vowels.each do |letter|
    vowels_freq[letter] = letters[letter]
end