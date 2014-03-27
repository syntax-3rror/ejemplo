def juego(game)
if game[0][1] == 'r'
   if game[1][1] == 'r'
   elsif game [1][1] == 'p'
   ganador = 1
   else
   end
  elsif game[0][1] == 'p'
   if game[1][1] == 'r'
   elsif game [1][1] == 'p'
   else
   ganador = 1
   end
  else
   if game[1][1] == 'r'
   ganador = 1
   elsif game [1][1] == 'p'
   else
   end
  end
  return game[ganador][0]
end
game = [["Juan","p"],["Pedro","t"]]

puts juego(game)


