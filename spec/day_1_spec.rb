# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/day_1/day_1.rb'

describe 'Day 1' do
  it 'get the empty calories index' do
    calories = ["2\n", "2\n", "\n", "2\n", "1\n", "\n", "3\n"]
    highers = (get_empty_calories_index(calories
      .map{|calorie| calorie.delete("\n")}))
    expect(highers).to eq [2, 5]
  end

  it 'get the highest sum' do
    calories = ["2", "2", "", "2", "1", "", "3"]
    index = [2, 5]
    highers = get_three_highers(calories.map(&:to_i), index)
    expect(highers.max).to eq 4
  end

  it 'get the sum of the three highers calories' do
    calories = ["2", "2", "", "2", "1", "", "3"]
    index = [2, 5]
    highers = get_three_highers(calories.map(&:to_i), index)
    expect(highers.sum).to eq 10
  end
end
