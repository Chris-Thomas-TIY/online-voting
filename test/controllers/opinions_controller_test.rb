require 'test_helper'

class OpinionsControllerTest < ActionController::TestCase
  setup do
    @jim = Constituent.create(name:"jim", email:"Jim@person.com", password:"jim")
    @bill = Bill.create(name: "An Act to Prohibit the Public Display of Awesomeness")
    @closed_bill = Bill.create(name: "Dumb Bill with No Support!!!", actual_vote: false)
  end

  test "Constituents cannot vote on closed bills" do
    refute_difference('Opinion.count') do
      post :create { vote: true, constituent_id: @jim.id, bill_id: @closed_bill.id }
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
  #test "should get show" do
  #  get :show
  #  assert_response :success
#end

end
