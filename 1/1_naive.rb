# frozen_string_literal: true

# read the input
file = File.open('input.txt')
data = file.readlines.map(&:chomp)
file.close

# variables
total_calories = []
current_total = 0

# calculate the total
data.each do |cal|
  if cal.empty?
    total_calories << current_total
    current_total = 0
    next
  else
    current_total += cal.to_i
  end
end

# output the result

puts total_calories.max
puts total_calories.sort.last(3).sum
