# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/day_3/day_3.rb'

describe 'Day 3' do
  context 'when the items are disorganized' do
    it 'catch the priorities of each one' do
      item_types = ['vJrwpWtwJgWrhcsFMMfFFhFp',
                    'jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL']
      expect(catch_priority(item_types)).to eq [['p'], ['L']]
    end
  end

  context 'with the priorities' do
    it 'sum their values' do
      item_priorities = [['p'], ['L']]
      expect(sum_priorities(item_priorities)).to eq 54
    end
  end

  context 'when have a group' do
    it 'catch the commom item between them' do
      items = [
        'vJrwpWtwJgWrhcsFMMfFFhFp',
        'jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL',
        'PmmdzqPrVvPwwTWBwg',
        'wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn',
        'ttgJtRGJQctTZtZT',
        'CrZsJsPPZsGzwwsLwLmpwMDw'
      ]

      expect(gather_group(items).compact).to eq [['r'],['Z']]
    end
  end

  context 'when gather the group' do
    it 'sum their values' do
      item_priorities = [['r'],['Z']]
      expect(sum_priorities(item_priorities)).to eq 70
    end
  end
end
