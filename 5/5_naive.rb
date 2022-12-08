piles, cmds = *File.readlines('input.txt', chomp: true).slice_after(/^$/)
piles = piles[0..-3].reverse.map do |l|
  l.scan(/(?:\[(.)\]|...).?/).flatten
end.transpose.map(&:compact)
piles2 = piles.map(&:clone)
cmds = cmds.map do |cmd|
  cmd.match(/^move (\d+) from (\d+) to (\d+)$/).captures.map(&:to_i)
end
cmds.each { |n, f, t| n.times { piles[t - 1] << piles[f - 1].pop } }
cmds.each { |n, f, t| piles2[t - 1].push(*piles2[f - 1].pop(n)) }
puts piles.map { |pile| pile.last }.join
puts piles2.map { |pile| pile.last }.join

# HJLGDBBWZ
# HZFZCCWWV
