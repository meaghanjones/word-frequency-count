require('rspec')
require('word_frequency.rb')

describe('String#word_frequency') do
  it('checks whether a specific word is in a given string') do
    expect("Meaghan Jones is wonderful".word_frequency("wonderful")).to eq(1)
  end
  it('checks whether a specific word is in a given string') do
    expect("Meaghan Jones is really really wonderful".word_frequency("really")).to eq(2)
  end
end
