require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the word frequency path', {:type => :feature}) do
  it('processes the user entry of a phrase and a word and returns the frequency of the word in the phrase') do
    visit('/')
    fill_in('input-phrase', :with => 'How much wood could a wood chuck chuck if a wood chuck could chuck wood')
    fill_in('input-word', :with => 'wood')
    expect(page).to have_content("Your word occurs in the phrase 4 times.")
  end
end
