# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/day_2/day_2.rb'

describe 'Day 2' do
  context 'normal tournament' do
    let(:player_choice) { {name: 'Rock', value: 1, defeat: 'Scissors'} }
    let(:npc_choice) { {name: 'Scissors', value: 3, defeat: 'Paper'} }

    context "When the player wins" do
      it 'the player receive the choice point + 6' do
        expect(tournament(npc_choice, player_choice)).to eq 7
      end
    end

    context "When the player loses" do
      it 'the player receive only the choice point' do
        expect(tournament(player_choice, npc_choice)).to eq 3
      end
    end

    context "When the game finish in a draw" do
      it 'the player receive the choice point + 3' do
        expect(tournament(player_choice, player_choice)).to eq 4
      end
    end
  end

  context 'conditionated tournament' do
    let(:npc_choice) { { name: 'rock', value: 1, defeat: 'scissors', lose_to: 'paper' } }

    context "When the condition is z" do
      it 'the player must win' do
        expect(condicionated_tournament(npc_choice,'z')).to eq 8
      end
    end

    context "When the condition is x" do
      it 'the player must lose' do
        expect(condicionated_tournament(npc_choice,'x')).to eq 3
      end
    end

    context "When the condition is y" do
      it 'the game must finish with a draw' do
        expect(condicionated_tournament(npc_choice,'y')).to eq 4
      end
    end
  end
end
