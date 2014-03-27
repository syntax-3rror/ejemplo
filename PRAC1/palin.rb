def palindromo?(string) 
	string= string.downcase.gsub(/[^[[:word:]]\s]/, '').gsub(/\s+/, "")
    string2 = string.reverse
	 
	return string==string2 ? true: false
end
puts palindromo?("anita lava la tina")


