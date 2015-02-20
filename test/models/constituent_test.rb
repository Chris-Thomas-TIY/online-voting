require 'test_helper'

class ConstituentTest < ActiveSupport::TestCase
  setup do
    @constituent = constituents(:one)
  end
  # test "the truth" do
  #   assert true
  # end

  test "constituents have opinions" do
    assert @constituent.opinions.first
  end

  test "emails are unique" do
    not_one = Constituent.new(name: "Not one", email: "one@congress.com")
    refute not_one.save
  end

  test "can find by email" do
    assert_equal @constituent, Constituent.find_specific_email("one@congress.com").first
  end
end
