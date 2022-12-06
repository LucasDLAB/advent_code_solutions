def sum_calories(calories)
  sum = higher = 0
  calories.each do |calorie|
    if calorie.empty? 
      higher = sum if sum > higher
      sum = 0
    else
      sum += calorie.to_i
    end
  end

  return "#{higher} is the highest number of calories"
end
