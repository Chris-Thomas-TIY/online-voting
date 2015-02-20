require 'test_helper'

class BillsControllerTest < ActionController::TestCase
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
  test "should get index" do
    get :index
    assert_response :success
  end

  test "displays bills" do
    get :index
    assert_select "tr", Bill.count + 1
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, bill: { name: "Bills bill", actual_vote: true}
    end

    assert_redirected_to bills_path
  end
#
  #test "should get show" do
  #  get :show
  #  assert_response :success
  #end

end
