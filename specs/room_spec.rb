require ('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class RoomTest < Minitest::Test

  def setup
    @room1 = Room.new("Karaoke Room")
  end 

  def test_room_has_name
    assert_equal('Karaoke Room', @room1.room_name)
  end 







end 