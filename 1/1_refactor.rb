# frozen_string_literal: true

# read the input
# RF: Eliminated storing the extracted data into a variable.
# file = File.open('input.txt')
# data = file.readlines.map(&:chomp)
# file.close

# variables
total_calories = []
current_total = 0

# calculate the total
# RF: Using foreach instead of each.
File.foreach('input.txt', chomp: true) do |cal|
  if cal.empty?
    total_calories << current_total
    current_total = 0
    # RF: next is no longer needed.
    # next
  else
    current_total += cal.to_i
  end
end

# output the result
# RF: Avoided using a sort method by using the max method.
puts total_calories.max
puts total_calories.max(3).sum
