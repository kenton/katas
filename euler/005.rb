count = 0
divisible = []

until divisible.uniq == [true]
  count += 1
  divisible = []
  (1..20).each do |n|
    if (count % n == 0)
      divisible << true
      puts "#{count} is divisible by #{n}"
    else
      divisible << false
    end
  end

  puts "#{divisible.uniq}"
end

puts count
