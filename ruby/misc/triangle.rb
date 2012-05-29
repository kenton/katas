def triangle(n)
  counter = 1

  (1..n).each do |line_number|
    output = ""
    line_number.times do
      output << "#{counter} "
      counter += 1
    end
    puts output
  end
end

triangle(gets.to_i)

# triangle(3)
# 1
# 2 3
# 4 5 6
