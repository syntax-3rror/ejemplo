def combinar_anagramas (anags)
  res  =Array.new 
  
 anags.each do |palabra|
   
    arrayAux = Array.new 
	#PARTITION Devuelve 2 arrays,1er contiene los elementos q, la segunda contiene el resto
    arrayAux, anags = anags.partition { |aux| palabra.downcase.chars.sort.join == (aux.downcase.chars.sort.join ) } 
	if(!arrayAux.empty?)
    res.push arrayAux
	end
  end
return res
end
 combinar_anagramas (['cars','arcs','for','four'])