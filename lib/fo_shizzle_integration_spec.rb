require(capybara/rspec)
require('./app')
Capybara.app=Sinatra::Application

describe('the fo_shizzle path', {:type => :feature}) do
  it('processes the user entry and returns it in snoop dogg speak') do
    visit('/')
    fill_in('sentence',:with => 'This is Sallys sentence')
    click_button('Holla at your boi')
    expect(page).to have_content('Thiz iz Sallyz sentence')
  end
end
