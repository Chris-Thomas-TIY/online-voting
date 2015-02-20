require 'test_helper'

class ConstituentTest < ActiveSupport::TestCase
  setup do
    @constituent = constituents(:one)
  end
  # test "the truth" do
  #   assert true
  # end

  test "Constituents have opinions" do
    assert @constituent.opinions.first
  end
end
