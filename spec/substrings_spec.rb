require 'spec_helper'
require_relative '../lib/substrings'

RSpec.describe 'Substrings' do
  describe 'find the amount of substring in the dictionary'

  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  context 'when the given text has just one word' do
    it 'return a hash with the word and how many times it appears' do
      expected_output = { "below" => 1, "low" => 1 }
      expect(substrings("below", dictionary)).to eq(expected_output)
    end
  end

  context 'when the given text has multiple words' do
    it 'return a hash containing the words and how many times it appears' do
      expected_output = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq(expected_output)
    end
  end
end