# frozen_string_literal: true

score = 0

File.foreach('a', chomp: true) do |round|
  opponent = round.split[0]
  outcome = round.split[1]

  case opponent
  when 'A'
    score += 3 if outcome == 'X'
    score += 4 if outcome == 'Y'
    score += 8 if outcome == 'Z'
  when 'B'
    score += 1 if outcome == 'X'
    score += 5 if outcome == 'Y'
    score += 9 if outcome == 'Z'
  when 'C'
    score += 2 if outcome == 'X'
    score += 6 if outcome == 'Y'
    score += 7 if outcome == 'Z'
  end
end

puts score
