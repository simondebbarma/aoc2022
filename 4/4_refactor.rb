# frozen_string_literal: true

range_overlaps = total_overlaps = 0

File.open('a').each do |line|
  x, y = line.split(',').map { |s| Range.new(*s.split('-')) }
  range_overlaps += 1 if x.cover?(range2) || y.cover?(range1)
  total_overlaps += 1 if x.to_a & y.to_a != []
end

puts range_overlaps
puts total_overlaps
