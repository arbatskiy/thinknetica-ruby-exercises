letters = ('a'..'z').to_a.map(&:to_sym).zip(1..26).to_h
vowels = letters.select { |key, value| key.to_s.match(/[aouie]/) }