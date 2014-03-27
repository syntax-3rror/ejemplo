class String 
	
 	def palindromo
 	string =self.downcase.gsub(/[^[[:word:]]\s]/, '').gsub(/\s+/, "")
    string2 = string.reverse
	 
	return string==string2 ? true: false

	end

end