def fibonacci(n)
  list = [1, 2]
  value = 0
  until value >= n
    value = list[list.length - 1] + list[list.length - 2]
    list << value
  end
  puts "Fibonacci List: #{list}"

  evens = list.select { |v| v.even? }
  puts "Even Fibonacci number: #{evens}"

  sum_of_evens = evens.inject(0) {|sum, value| sum + value}
  puts "Sum of even Fibonacci number: #{sum_of_evens}"
end

puts fibonacci(4000000)
