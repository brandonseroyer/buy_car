require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the used car buyer path', {:type => :feature}) do
  it('processes the user entries and returns true or false') do
    visit('/')
    fill_in('make', :with => 'Toyota')
    fill_in('model', :with => 'Prius')
    fill_in('year', :with => 2000)
    click_button('Submit')
    expect(page).to have_content("false")
  end
end
