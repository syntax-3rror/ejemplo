def suma_fibo
sum = 0
a,b = 0,1
cont=0
while cont < 4000
  sum += a if a.even?
  a,b = b,a+b
cont+=1
end
return sum
end 
print suma_fibo