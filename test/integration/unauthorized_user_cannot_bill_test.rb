require 'test_helper'

class UnauthorizedUserCannotBill < Capybara::Rails::TestCase

  def test_login
    visit '/bills'
    current_path == login_path
  end

end
