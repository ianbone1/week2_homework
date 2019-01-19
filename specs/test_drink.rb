require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink.rb")

class TestDrink < Minitest::Test

  def setup
    @drink0 = Drink.new("Stella", 3.90, 2.5)
  end

  def test_create_drink
    assert_equal("Stella", @drink0.name)
    assert_equal(3.9, @drink0.price)
    assert_equal(2.5, @drink0.units)
  end
end
