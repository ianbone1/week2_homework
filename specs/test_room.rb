require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest.rb")
require_relative("../Song.rb")
require_relative("../Room.rb")

require("pry")

class TestRoom < Minitest::Test

  def setup
    @song_title5 = "500 miles"
    @song_title6 = "Dancing queen"
    @song_title7 = "My way"
    @song_title8 = "Roxanne"
    @song_title9 = "Rose garden"
    @song5 = Song.new(@song_title5)
    @song6 = Song.new(@song_title6)
    @song7 = Song.new(@song_title7)
    @song8 = Song.new(@song_title8)
    @song9 = Song.new(@song_title9)
    @play_list1 = [@song9, @song8, @song7, @song6, @song5]
    @person_name0 = "Delia"
    @person_name1 = "Kim"
    @person_name2 = "Neil"
    @person_name3 = "James"
    @person_name4 = "Ian"
    @person_name5 = "Eloise"
    @person_name6 = "Heather"
    @person0 = Guest.new(@person_name0, 100.0, @song0)
    @person1 = Guest.new(@person_name1, 100.0, @song1)
    @person2 = Guest.new(@person_name2, 100.0, @song2)
    @person3 = Guest.new(@person_name3, 100.0, @song3)
    @person4 = Guest.new(@person_name4, 100.0, @song4)
    @person5 = Guest.new(@person_name5, 100.0, @song5)
    @person6 = Guest.new(@person_name6, 100.0, @song6)
    @party0 = [@person0, @person1, @person2]
    @party1 = [@person3, @person4, @person5, @person6]
    @room_name0 = "Room 101"
    @room_max_guests0 = 4
    @room_cost0 = 40.0
    @room0 = Room.new(@room_name0, @room_max_guests0, @room_cost0)
  end

  def test_room_created
    assert_equal(@room_name0, @room0.room_name)
    assert_equal(@room_max_guests0, @room0.max_guests)
    assert_equal(@room_cost0, @room0.room_cost)
    assert_equal([], @room0.guest_list)
    assert_equal([], @room0.play_list)
  end

  def test_favourite_songs
    #force in a party and a playlist
    @room0.guest_list = @party1
    @room0.play_list = @play_list1
    favs = @room0.check_favourite_songs
    assert_equal(2, favs.count)
  end

end
