def output(max)
  sum = 0
  (1...max).each do |n|
    if (n % 5 == 0) || (n % 3 == 0)
      sum += n
    end
  end
  puts sum
end

output(10)
output(1000)

