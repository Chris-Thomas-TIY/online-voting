class OwnerCanCreateConstituents < Capybara::Rails::TestCase
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
    click_button 'Create Constituent'
    assert_equal new_constituent_path, current_path
    within(".constituent") do
      fill_in 'Name', :with => "bob"
      fill_in 'Email', :with => 'bob@person.com'
      fill_in 'Password', :with => 'password'
    end
    assert_difference('Constituent.count') do
      click_button 'Save'
    end
  end
end
