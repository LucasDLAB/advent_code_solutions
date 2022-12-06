require 'spec_helper'
require 'day_1'

describe 'Day 1' do
  it 'get the highest sum' do
    calories = File.open('inputs/day_1_input.txt')
    calories = (sum_calories(calories.readlines
      .map{ |calorie| calorie.delete("\n")}))
    expect(calories).to eq "70764 is the highest number of calories"
  end
end
