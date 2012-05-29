def fb
  (1..100).each do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      puts "#{n}: FizzBuzz"
    elsif (n % 3 == 0)
      puts "#{n}: Fizz"
    elsif (n % 5 == 0)
      puts "#{n}: Buzz"
    else
      puts n
    end
  end
end


def triangle(number_of_lines)
  counter = 0

  (1..number_of_lines).each do |line_number|
    output = ""
    line_number.times do
      counter += 1
      output << "#{counter.to_s} "
    end
    puts output
  end
end
