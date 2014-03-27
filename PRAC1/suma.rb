def suma_digitos
    
    (2**4).to_s.split('').map(&:to_i).inject{ |result, element| result + element }



end

puts suma_digitos

