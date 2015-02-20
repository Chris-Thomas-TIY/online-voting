require 'test_helper'

class ConstituentsControllerTest < ActionController::TestCase
  setup do
    @jim = Constituent.create(name:"jim", email:"Jim@person.com", password:"jim")
    @bill = Bill.create(name: "An Act to Prohibit the Public Display of Awesomeness")
    @closed_bill = Bill.create(name: "Dumb Bill with No Support!!!", actual_vote: false)
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
# test "non owner constituents cant create bills" do
#   get new_bill_path  setup do


  test "Constituents can vote on bills" do
    assert Opinion.create(vote: false, constituent_id: @jim.id, bill_id: @bill.id)
  end

#
#   assert_redirected_to login_path
# end

end
