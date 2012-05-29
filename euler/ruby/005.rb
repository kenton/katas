#count = 0
#divisible = []

#until divisible.uniq == [true]
  #count += 1
  #divisible = []
  #(1..20).each do |n|
    #if (count % n == 0)
      #divisible << true
      #puts "#{count} is divisible by #{n}"
    #else
      #divisible << false
    #end
  #end

  #puts "#{divisible.uniq}"
#end

#puts count
count = 1

def divisible_by_all?(count)
  (1..20).map { |n| count % n == 0 }.uniq == [true]
end

solution = nil

until divisible_by_all?(count)
  count += 1
  puts "#{count}: #{divisible_by_all?(count)}"
  divisible_by_all?(count)
end

puts "#{count} is the answer"


