def findprimes(max=20)
    primes=[2,3]
    a=false
    (4..max).each do |i|
        primes.each do |x|
    		if i % x == 0
				a=false
                break
			else
                a=true
			end
		end
        if a==true
           primes.push(i)
        end
	end
	return primes
end

puts "enter your number"
num=gets.chomp.to_i

list=findprimes(num)
answer=0

list.each {|x|
	while num % x == 0
		answer=x
		num/=x
	end
}

puts "highest prime found"
puts answer
puts "ending number"
puts num