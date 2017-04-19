require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome path', {:type => :feature}) do
  it('processes the user entry and returns if it is a palindrome') do
    visit('/')
    fill_in('user_string', :with => 'hannah')
    click_button('reveal')
    expect(page).to have_content('true')
  end
end
