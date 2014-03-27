
def suma_triangulo(triangulo)
	
array = triangulo.each_line.map { |line| line.split.map {|x| x.to_i}} 
lineas= array.size


i = 1
auxJ=0
res = array[0][0]
j=0
b=0
while i <lineas 
	j= auxJ
	print auxJ.to_s + " j\n"
	aux3= array[i].size
	print aux3.to_s + "aux_"
  while  j<auxJ+1 
  j2=j+1
  aux = array[i][j]
  aux4= array[i].size
#if (j2<auxJ+1)
  aux2 = array[i][j2]
  #b=0
  #else
#  aux2 = array[i][j]
 # b=1
 # end
  
  print aux.to_s + "*1\n"
  print aux2.to_s + "*2\n"
  if aux>aux2
	auxJ= j
	res+=aux
	 print auxJ.to_s + "j1\n"
  else 
   auxJ= j
	res+=aux2
	 print auxJ.to_s + "j2\n"
 
end
if (b==1)
auxJ= j
end
print res.to_s + "rsu\n"
j+=1  
  
end
 i+=1
end
print res 
end
triangulo_s = <<EOS
1 
9 4 
2 4 6 
7 5 8 3 
EOS

suma_triangulo(triangulo_s)
