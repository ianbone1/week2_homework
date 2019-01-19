require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest.rb")
require_relative("../Song.rb")

class TestGuest < Minitest::Test

  def setup
    @song_title0 = "Dignity"
    @song0 = Song.new(@song_title0)
    @guest0 = Guest.new("Ian", 21, 100.0, @song0)
  end

  def test_user_create
    assert_equal("Ian", @guest0.name)
    assert_equal(21, @guest0.age)
    assert_equal(100.0, @guest0.wallet)
    assert_equal(@song0, @guest0.favourite_song)
  end

  def test_handover_money
    bill = 10.0
    handed_over = @guest0.handover_money(bill)
    assert_equal(90.0, @guest0.wallet)
    assert_equal(bill, handed_over)
  end

  def test_handover_money_not_enough_funds
    bill = 200.0
    handed_over = @guest0.handover_money(bill)
    assert_equal(100.0, @guest0.wallet)
    assert_equal(0.0, handed_over)
  end

  def test_cashline
    top_up = 100.0
    @guest0.top_up_wallet(top_up)
    assert_equal(200, @guest0.wallet)
  end
end
