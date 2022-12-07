def get_empty_calories_index(calories)
  elf_calories = []

  calories.each_with_index do |calorie, index|
    elf_calories << index if calorie.empty?
  end

  elf_calories
end

def get_three_highers(calories, elf_calories)
  highers = []
  beginning = 0

  elf_calories.each do |index|
    highers << calories[beginning..index].sum
    beginning = index
  end
  highers << calories[elf_calories.last..-1].sum

  highers.max(3)
end


if __FILE__ == $PROGRAM_NAME
  calories = File.open('lib/day_1/day_1_input.txt')
  index ||= get_empty_calories_index(calories.readlines
    .map!{ |calorie| calorie.delete("\n")})
  highers = get_three_highers(calories.map(&:to_i), index)
  p "#{highers.max} is the highest number of calories"
  p "#{highers.sum} is the sum of the three highest number of calories"
end