require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('the user entry passes through anagram method, returns correct anagram to them') do
  visit('/')
  fill_in('starting_word', :with => 'atom')
  fill_in('compared_word1', :with => 'mota')
  fill_in('compared_word2', :with => 'otam')
  fill_in('compared_word3', :with => 'toma')
  fill_in('compared_word4', :with => 'tomato')
  fill_in('compared_word5', :with => 'potato')
  click_button('submit')
  expect(page).to(have_content("mota", "otam", "toma"))
  end
end
