def palindrome(number_of_digits)
  a = []
  min = []
  number_of_digits.times { a << 9 }
  max_number = a.join.to_i
  first = max_number
  second = max_number
  floor_value = (number_of_digits - 1).times { min << 0}
  min_number = min.join.to_i

  max = 0

    first.downto(min_number) do |f|
      second.downto(min_number) do |s|
        value = f * s
        # puts "#{f} x #{s} = #{value}"
        if (value.to_s == value.to_s.reverse) && (value > max)
          max = value
        end
      end
    end

  puts "Largest Palindrome for the product of two #{number_of_digits}-digit numbers is: #{max}"
end

palindrome(3)

