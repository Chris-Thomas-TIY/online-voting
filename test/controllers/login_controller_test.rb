require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  setup do
      @jim = Constituent.create(name:"jim", email:"Jim@person.com", password:"jim")
  end

  test "should be able to login" do
    post :create, login: { email: @jim.email, password: 'jim' }
    assert_redirected_to bills_path
  end

  test "should not allow wrong password" do
    post :create, login: { email: @jim.email, password: 'wrong' }
    assert_redirected_to login_new_path
  end




end