def queDice
loop do
  puts "Que haces Elmer"
  respuesta = gets.chomp
  
  break if respuesta.downcase == "salir"
  
  next unless respuesta.include?("co")
  
  respuesta.gsub!("co", "buo") if respuesta.include?("co")
  
  puts "Elmer dice: #{respuesta}"
end
end

queDice