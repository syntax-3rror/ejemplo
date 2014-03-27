def fizz_buzz 

1.upto(100) do |cont|
      if cont % 5 == 0 and cont % 3 == 0
        puts "FizzBuzz"
      elsif cont % 5 == 0
        puts "Buzz"
      elsif cont % 3 == 0
        puts "Fizz"
      else
        puts cont
      end
    end
	
	end
