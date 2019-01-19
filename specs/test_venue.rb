require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest.rb")
require_relative("../Song.rb")
require_relative("../Room.rb")
require_relative("../Venue.rb")
require_relative("../Drink.rb")
require_relative("../Bar.rb")

require("pry")

class TestRoom < Minitest::Test

  def setup
    @song_title0 = "Dignity"
    @song_title1 = "Eye of the Tiger"
    @song_title2 = "Waterloo"
    @song_title3 = "Raining Men"
    @song_title4 = "We will rock you"
    @song_title5 = "500 miles"
    @song_title6 = "Dancing queen"
    @song_title7 = "My way"
    @song_title8 = "Roxanne"
    @song_title9 = "Rose garden"
    @song0 = Song.new(@song_title0)
    @song1 = Song.new(@song_title1)
    @song2 = Song.new(@song_title2)
    @song3 = Song.new(@song_title3)
    @song4 = Song.new(@song_title4)
    @song5 = Song.new(@song_title5)
    @song6 = Song.new(@song_title6)
    @song7 = Song.new(@song_title7)
    @song8 = Song.new(@song_title8)
    @song9 = Song.new(@song_title9)
    @play_list0 = [@song0, @song1, @song2, @song4, @song5, @song6]
    @play_list1 = [@song9, @song8, @song7, @song6, @song5]
    @play_list3 = [@song7, @song6, @song5, @song0, @song1, @song2, @song3]
    @person_name0 = "Delia"
    @person_name1 = "Kim"
    @person_name2 = "Neil"
    @person_name3 = "James"
    @person_name4 = "Ian"
    @person_name5 = "Eloise"
    @person_name6 = "Heather"
    @person_name7 = "Robert"
    @person_name8 = "Stuart"
    @person_name9 = "Collin"
    @person_name10 = "Carme"
    @person_name11 = "John"
    @person_name12 = "Kyle"
    @person_name13 = "Ewan"
    @person_name14 = "Simon"
    @person0 = Guest.new(@person_name0, 21, 100.0, @song0)
    @person1 = Guest.new(@person_name1, 22, 100.0, @song1)
    @person2 = Guest.new(@person_name2, 23, 100.0, @song2)
    @person3 = Guest.new(@person_name3, 24, 100.0, @song3)
    @person4 = Guest.new(@person_name4, 16, 100.0, @song4)
    @person5 = Guest.new(@person_name5, 26, 100.0, @song5)
    @person6 = Guest.new(@person_name6, 27, 100.0, @song6)
    @person7 = Guest.new(@person_name7, 28, 100.0, @song7)
    @person8 = Guest.new(@person_name8, 29, 100.0, @song8)
    @person9 = Guest.new(@person_name9, 30, 100.0, @song9)
    @person10 = Guest.new(@person_name10, 31, 100.0, @song0)
    @person11 = Guest.new(@person_name11, 32, 100.0, @song1)
    @person12 = Guest.new(@person_name12, 33, 100.0, @song2)
    @person13 = Guest.new(@person_name13, 34, 100.0, @song3)
    @person14 = Guest.new(@person_name14, 35, 100.0, @song4)
    @party0 = [@person0, @person1, @person2]
    @party1 = [@person3, @person4, @person5, @person6, @person7]
    @party2 = [@person8, @person9, @person10, @person11, @person12, @person13, @person14]
    @party3 = [@person8, @person9, @person10, @person11, @person12, @person13]
    @party4 = [@person14]
    @room_name0 = "Room 101"
    @room_max_guests0 = 4
    @room_cost0 = 40.0
    @room_name1 = "Shower Singers"
    @room_max_guests1 = 5
    @room_cost1 = 50.0
    @room_name2 = "Hairbrush Ballads"
    @room_max_guests2 = 6
    @room_cost2 = 60.0
    @room0 = Room.new(@room_name0, @room_max_guests0, @room_cost0)
    @room1 = Room.new(@room_name1, @room_max_guests1, @room_cost1)
    @room2 = Room.new(@room_name2, @room_max_guests2, @room_cost2)

    @drink0 = Drink.new("Stella", 3.90, 2.5)
    @drink1 = Drink.new("Strongbow", 3.80, 3.0)
    @drink2 = Drink.new("White Wine", 4.0, 3.0)
    @drink3 = Drink.new("Red Wine", 4.0, 3.0)
    @drink4 = Drink.new("Whiskey", 4.5, 3.2)
    @drinks = [@drink0, @drink1, @drink2, @drink3, @drink4]
    @bar0 = Bar.new("The Singing Jug", @drinks, 18)

    @venue_name0 = "Code Clan Caraoke"
    @venue_rooms0 = [@room0, @room1, @room2]
    @venue0 = Venue.new(@venue_name0, @venue_rooms0, @bar0)



  end

  def test_venue_created
    assert_equal(3, @venue0.rooms.count)
    assert_equal(@venue_name0, @venue0.name)
    assert_equal(0, @venue0.bank_balance)
  end

  def test_find_smallest_empty_room0
    found_room = @venue0.find_free_room(@party0.count)
    assert_equal(@room0, found_room)
  end

  def test_find_smallest_empty_room1
    found_room = @venue0.find_free_room(@party1.count)
    assert_equal(@room1, found_room)
  end

  def test_find_smallest_empty_room2
    found_room = @venue0.find_free_room(@party2.count)
    assert_nil(found_room)
  end

  def test_find_smallest_empty_room3
    found_room = @venue0.find_free_room(@party3.count)
    assert_equal(@room2, found_room)
  end

  def test_find_smallest_empty_room4
    found_room = @venue0.find_free_room(@party4.count)
    assert_equal(@room0, found_room)
  end

  def test_find_smallest_empty_room2
    found_room = @venue0.find_free_room(0)
    assert_nil(found_room)
  end

  def test_checkin_single_guest_to_room_money_okay
    result = @venue0.checkin_guests(@party4, @play_list0)
    assert_equal(@room0, result)
    assert_equal(1, @room0.guest_list.length)
    assert_equal(60, @person14.wallet)
    assert_equal(40, @venue0.bank_balance)
    assert_equal(6, @room0.play_list.length)
  end

  def test_add_party_to_room__ALL_have_money
    result = @venue0.checkin_guests(@party0, @play_list0)
    assert_equal(@room0, result)
    assert_equal(3, @room0.guest_list.length)
    assert_equal(60, @person0.wallet)
    assert_equal(60, @person1.wallet)
    assert_equal(60, @person2.wallet)
    assert_equal(120, @venue0.bank_balance)
    assert_equal(6, @room0.play_list.length)
  end

  def test_add_party_to_room__SOME_have_money
    burn_cash = @person1.handover_money(80.0)
    result = @venue0.checkin_guests(@party0, @play_list0)
    assert_equal(@room0, result)
    assert_equal(2, @room0.guest_list.length)
    assert_equal(60, @person0.wallet)
    assert_equal(20, @person1.wallet)
    assert_equal(60, @person2.wallet)
    assert_equal(80, @venue0.bank_balance)
    assert_equal(6, @room0.play_list.length)
  end

  def test_add_party_to_room__NONE_have_money
    burn_cash = @person0.handover_money(80.0)
    burn_cash = @person1.handover_money(80.0)
    burn_cash = @person2.handover_money(80.0)
    result = @venue0.checkin_guests(@party0, @play_list0)
    assert_nil(result)
    assert_equal(0, @room0.guest_list.length)
    assert_equal(20, @person0.wallet)
    assert_equal(20, @person1.wallet)
    assert_equal(20, @person2.wallet)
    assert_equal(0, @venue0.bank_balance)
    assert_equal(0, @room0.play_list.length)
  end

  def test_party_leaves_room
    the_room = @venue0.checkin_guests(@party1, @play_list1)
    @venue0.checkout_guests(the_room)
    assert_equal(0, @room1.guest_list.count)
    assert_equal(0, @room1.play_list.count)
  end

  def test_party_leaves_room__reallocate_room
    the_room = @venue0.checkin_guests(@party1, @play_list1)
    @venue0.checkout_guests(the_room)
    assert_equal(0, @room1.guest_list.count)
    assert_equal(0, @room1.play_list.count)

    the_2ndroom = @venue0.checkin_guests(@party1, @play_list1)
    @venue0.checkout_guests(the_2ndroom)
    assert_equal(0, @room1.guest_list.count)
    assert_equal(0, @room1.play_list.count)
    assert_equal(500 , @venue0.bank_balance)
  end

  def test_person1_buys_a_drink
    @venue0.order_drink(@person1, @drink1)
    assert_equal(3.8, @venue0.bank_balance)
    assert_equal(96.2, @person1.wallet)
    assert_equal(3.0, @person1.alcohol_level)
  end

  def test_person1_buys_lots_of_drink
    @venue0.order_drink(@person1, @drink1)
    @venue0.order_drink(@person1, @drink1)
    @venue0.order_drink(@person1, @drink1)
    @venue0.order_drink(@person1, @drink1)
    @venue0.order_drink(@person1, @drink1)
    @venue0.order_drink(@person1, @drink1)
    @venue0.order_drink(@person1, @drink1)
    assert_equal(19.0, @venue0.bank_balance.round(2))
    assert_equal(81.0, @person1.wallet.round(2))
    assert_equal(15, @person1.alcohol_level.round(2))
  end

end
