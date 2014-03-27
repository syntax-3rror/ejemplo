def potencia num
 2**num
end 
def separar res
 res.to_s.split('')
end

def split_exponent num
    
    #return potencia(num).to_s.split('').map(&:to_i).inject{ |result, element| result + element }



end


puts split_exponent 1000
