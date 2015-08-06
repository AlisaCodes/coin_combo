require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combo path', {:type => :feature}) do
  it('processes the user entry and returns the necessary number of quarters, dimes, nickels     and pennies') do
    visit('/')
    fill_in('cents', :with => '41')
    click_button('Send')
    expect(page).to have_content('[1, 1, 1, 1]')
  end
end
