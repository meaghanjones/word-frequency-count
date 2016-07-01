require('rspec')
require('word_frequency.rb')

describe('String#word_frequency') do
  it('checks whether a given word is in a given string') do
    expect("Meaghan Jones is wonderful".word_frequency("wonderful")).to eq(1)
  end
  it('checks how many times a given word is in a given string') do
    expect("Meaghan Jones is really really wonderful".word_frequency("really")).to eq(2)
  end
  it('matches a word even if the input word is a different case than the inputted phrase') do
    expect("Meaghan Jones is wonderful".word_frequency("meaghan")).to eq(1)
  end
  it('matches a word even if the input phrase is a different case than the inputted word') do
    expect("meaghan Jones is wonderful".word_frequency("MeaGhan")).to eq(1)
  end
  it('matches a word even if there is punctionation in the phrase') do
    expect("How much wood could a woodchuck chuck?".word_frequency("chuck")).to eq(1)
  end
end
