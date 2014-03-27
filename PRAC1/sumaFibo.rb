def suma_fibo
	cont=0
	sum=0
a,b = 0,1
  while cont<40000  do
 	
     if a%2==1
	sum+=a
     end
   a,b = b,a+b
  	cont+=1
  end 
return sum
end 

print suma_fibo