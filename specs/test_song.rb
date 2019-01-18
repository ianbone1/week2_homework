require("minitest/autorun")
require("minitest/rg")
require_relative("../Song.rb")

class TestSong < Minitest::Test

  def setup
    @song_title0 = "Dignity"
    @song0 = Song.new(@song_title0)
  end

  def test_create_song
    assert_equal(@song_title0, @song0.title)
  end
end
