require ('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < Minitest::Test

  def setup
    guest1 = Guest.new("Homer","Simpson")
    guest2 = Guest.new("Tony", "Soprano")
    guest3 = Guest.new("Charles", "Xavier")
    guest4 = Guest.new("Frodo", "Baggins")
    guestlist = [guest1, guest2, guest3, guest4]

    song1 = Song.new("Metallica", "For Whom the Bell Tolls")
    song2 = Song.new("AC/DC", "Whole Lotta Rosie")
    song3 = Song.new("Pink Floyd", "Coming Back to Life")
    playlist = [song1, song2, song3]

    @room1 = Room.new("Karaoke Room", guestlist, playlist)
   
  end 

  def test_room_has_name
    assert_equal('Karaoke Room', @room1.room_name)
  end 

  def test_room_has_guests
    number_of_occupants = @room1.calculate_guest_total()
    assert_equal(4, number_of_occupants)
  end 

  def test_room_has_songs
    number_of_songs = @room1.calculate_song_total()
    assert_equal(3, number_of_songs)
  end 







end 