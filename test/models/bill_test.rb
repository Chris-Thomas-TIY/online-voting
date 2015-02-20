require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "there are bills" do
    assert Bill.count > 0
  end
end
