def combinar_anagramas (string)
		 aux2= Array.new
		 aux3= Array.new
		string.each do |palabra|
		 aux2.push palabra.downcase.gsub(/[^[[:word:]]\s]/,'').gsub(/\s/, "").chars.sort { |a, b| a.casecmp(b) }.join #ordena alfabeticamente cada palabra 
		 
		end
		
		aux2=aux2.uniq  ##palabras unicas 
		res= Array.new
		arrayPal= []
		
		aux2.each do |palabra|
		
			string.each do |pal|
				
				palAux= pal.downcase.gsub(/[^[[:word:]]\s]/,'').gsub(/\s/, "").chars.sort { |a, b| a.casecmp(b) }.join
				if (palAux==palabra)
					arrayPal.push  pal
				end 
				
			end
			
		res.push arrayPal
		arrayPal=aux3

		
		end
     
	 return res.uniq
	

	
end 

 puts combinar_anagramas( ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] )