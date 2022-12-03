# frozen_string_literal: true

score = 0

File.foreach('a', chomp: true) do |round|
  opponent = round.split[0]
  play = round.split[1]

  case play
  when 'X'
    score += 1
    score += 3 if opponent == 'A'
    score += 0 if opponent == 'B'
    score += 6 if opponent == 'C'
  when 'Y'
    score += 6 if opponent == 'A'
    score += 3 if opponent == 'B'
    score += 0 if opponent == 'C'
    score += 2
  when 'Z'
    score += 0 if opponent == 'A'
    score += 6 if opponent == 'B'
    score += 3 if opponent == 'C'
    score += 3
  end
end

puts score
