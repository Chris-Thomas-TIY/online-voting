class UnauthorizedUserCannotBill < ActionController::TestCase

  test "non owner constituents cant create bills" do
    get new_bill_path

    assert_redirected_to login_path
  end

end
