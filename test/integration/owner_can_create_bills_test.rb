class OwnerCanCreateBills < Capybara::Rails::TestCase
  setup do
    @owner = Constituent.create(name:"Owner", email:"owner@person.com", password:"owner")

  end

  def test_owner_can_create_bills
    visit '/login'
    within(".log-in") do
      fill_in 'Email', :with => "#{@owner.email}"
      fill_in 'Password', :with => 'owner'
    end
    click_button 'Log in'
    assert_equal constituents_path, current_path
    click_link 'Bills'
    assert_equal bills_path, current_path
    click_link 'Create Bill'
    assert_equal new_bill_path, current_path
    within(".bill") do
      fill_in 'Name', :with => "The Bill"
      within(".yes") do
        check 'bill[actual_vote]'
      end
    end
    assert_difference('Bill.count') do
      click_button 'Save'
    end
  end
end
