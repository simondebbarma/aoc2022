@values = File.open('a').to_a.map { _1.split('') }
@priorities = (('a'..'z').to_a + ('A'..'Z').to_a).map.with_index { [_1, _2 + 1] }.to_h
puts @values.sum { @priorities[_1.each_slice(_1.length / 2).to_a.then { |a, b| a & b }.first] }
puts @values.each_slice(3).sum { @priorities[(_1 & _2 & _3).first] }
