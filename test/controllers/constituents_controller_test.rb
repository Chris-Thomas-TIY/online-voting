require 'test_helper'

class ConstituentsControllerTest < ActionController::TestCase
  setup do
    @jim = Constituent.create(name:"jim", email:"Jim@person.com", password:"jim")
  end
  #test "should get new" do
  #  get :new
  #  assert_response :success
  #end
#
  #test "should get create" do
  #  get :create
  #  assert_response :success
  #end
#
  #test "should get update" do
  #  get :update
  #  assert_response :success
  #end
#
  #test "should get edit" do
  #  get :edit
  #  assert_response :success
  #end
#
  #test "should get destroy" do
  #  get :destroy
  #  assert_response :success
  #end
#
  #test "should get index" do
  #  get :index
  #  assert_response :success
  #end
#
test "non owner constituents cant create bills" do
  get new_bill_path

  assert_redirected_to login_path
end

end
