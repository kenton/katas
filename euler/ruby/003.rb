require 'prime'

def find_primes(n)
  Prime.prime_division(n).flatten.uniq.select {|v| v != 1}
end

puts "13195: #{find_primes(13195)} #{find_primes(13195).max}"
puts "600851475143: #{find_primes(600851475143)} #{find_primes(600851475143).max}"
