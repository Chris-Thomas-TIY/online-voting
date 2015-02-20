class OwnerCanCreateBill < Capybara::Rails::TestCase
  setup do
    @owner = Constituent.create(name:"Owner", email:"Owner@person.com", password:"owner")
    # @bill = Bill.create(name: "An Act to Prohibit the Public Display of Awesomeness")
    # @closed_bill = Bill.create(name: "Dumb Bill with No Support!!!", actual_vote: false)
  end

  def test_login
    visit '/login'
    within(".log-in") do
      fill_in 'Email', :with => "#{@owner.email}"
      fill_in 'Password', :with => 'owner'
    end
    click_button 'Log in'
    current_path == constituents_path
  end

end
