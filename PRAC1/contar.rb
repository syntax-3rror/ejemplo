def contar_palabras(string) 
	 string =string.downcase.gsub(/[^[[:word:]]\s]/, '').split(" ") #cada palabra separada en array 
	 aux = string.uniq
	 res= Hash.new # crear hash 
	 aux.each do |pal|
		res[pal]= pal
	    cont=0
		string.each do |pal2|
						if (pal2==pal)
							cont+=1
						end 
	 
					end
     res[pal] = cont #concatena el value 
			
	 
				end 
	 
    res
end 
	 
puts contar_palabras("A man, a plan, a canal -- Panama") 	 
	
	
