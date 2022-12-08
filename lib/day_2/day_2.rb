def tournament(opponent, me)
  if me[:defeat] == opponent[:name]
    me[:value] + 6
  elsif opponent[:defeat] == me[:name]
    me[:value]
  else
    me[:value] + 3
  end
end

def condicionated_tournament(choice, condition)
  result = { 'rock': 1, 'paper': 2, 'scissors': 3 }

  if condition == 'y'
    choice[:value] + 3
  elsif condition == 'x'
    result[choice[:defeat].to_sym]
  elsif condition == 'z'
    result[choice[:lose_to].to_sym] + 6
  end
end

a = x = { name: 'rock', value: 1, defeat: 'scissors', lose_to: 'paper' }
b = y = { name: 'paper', value: 2, defeat: 'rock', lose_to: 'scissors' }
c = z = { name: 'scissors', value: 3, defeat: 'paper', lose_to: 'rock' }


if __FILE__ == $PROGRAM_NAME
  moves = File.open('lib/day_2/day_2_input.txt')
  points = 0
  condicionated_points = 0

  moves.readlines.each do |line|
    line = line.downcase.split
    points += tournament(eval(line[0]), eval(line[1]))
    condicionated_points += condicionated_tournament(
      eval(line[0]), line[1]
    )
  end

  p points
  p condicionated_points
end
