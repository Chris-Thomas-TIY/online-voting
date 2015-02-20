require 'test_helper'

class Login < Capybara::Rails::TestCase
  setup do
    @jim = Constituent.create(name:"jim", email:"Jim@person.com", password:"jim")
    @bill = Bill.create(name: "An Act to Prohibit the Public Display of Awesomeness")
    @closed_bill = Bill.create(name: "Dumb Bill with No Support!!!", actual_vote: false)
  end

  def test_login
    visit '/login'
    within(".log-in") do
      fill_in 'Email', :with => "#{@jim.email}"
      fill_in 'Password', :with => 'jim'
    end
    click_button 'Log in'
    current_path == bills_path
  end
  #end
end
