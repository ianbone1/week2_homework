require("minitest/autorun")
require("minitest/rg")
require_relative("../Bar.rb")
require_relative("../Drink.rb")

class TestBar < Minitest::Test

  def setup
    @drink0 = Drink.new("Stella", 3.90, 2.5)
    @drink1 = Drink.new("Strongbow", 3.80, 3.0)
    @drink2 = Drink.new("White Wine", 4.0, 3.0)
    @drink3 = Drink.new("Red Wine", 4.0, 3.0)
    @drink4 = Drink.new("Whiskey", 4.5, 3.2)
    @drinks = [@drink0, @drink1, @drink2, @drink3, @drink4]
    @bar0 = Bar.new("The Singing Jug", @drinks, 18)
  end

  def test_create_bar
    assert_equal("The Singing Jug", @bar0.name)
    assert_equal(5, @bar0.drinks.count)
    assert_equal(18, @bar0.age_limit)
  end
end
