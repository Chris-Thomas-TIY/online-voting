class OwnerLogin < Capybara::Rails::TestCase
  setup do
    @owner = Constituent.create(name:"Owner", email:"owner@person.com", password:"owner")
    # @bill = Bill.create(name: "An Act to Prohibit the Public Display of Awesomeness")
    # @closed_bill = Bill.create(name: "Dumb Bill with No Support!!!", actual_vote: false)
  end

  def test_login_for_owner
    visit '/login'
    within(".log-in") do
      fill_in 'Email', :with => "#{@owner.email}"
      fill_in 'Password', :with => 'owner'
    end
    click_button 'Log in'
    assert_equal constituents_path, current_path
  end

end
