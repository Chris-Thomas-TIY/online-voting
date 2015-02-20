require 'test_helper'

class OpinionTest < ActiveSupport::TestCase
  setup do
    @opinion = opinions(:one)
  end

  # test "the truth" do
  #   assert true
  # end

  test "opinions belong to bills" do
    assert @opinion.bill
  end

end
