# frozen_string_literal: true

data = File.open('a')

range_overlaps = 0
total_overlaps = 0

data.each do |line|
  x, y = line.split(',')
  limits1 = x.split('-').map(&:to_i)
  limits2 = y.split('-').map(&:to_i)
  range1 = (limits1[0]..limits1[1])
  range2 = (limits2[0]..limits2[1])
  array1 = (limits1[0]..limits1[1]).to_a
  array2 = (limits2[0]..limits2[1]).to_a
  range_overlaps += 1 if range1.cover?(range2) || range2.cover?(range1)
  total_overlaps += 1 if array1 & array2 != []
end

puts range_overlaps
puts total_overlaps
