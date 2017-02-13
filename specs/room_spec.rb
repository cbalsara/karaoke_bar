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
    guestlist2 = []

    song1 = Song.new("Metallica", "For Whom the Bell Tolls")
    song2 = Song.new("AC/DC", "Whole Lotta Rosie")
    song3 = Song.new("Pink Floyd", "Coming Back to Life")
    playlist = [song1, song2, song3]
    playlist2 = []


    @room1 = Room.new("Bar Room", guestlist, playlist)
    @room2 = Room.new("Karaoke Room", guestlist2, playlist2)
   
  end 

  def test_room_has_name
    assert_equal('Bar Room', @room1.room_name)
    assert_equal('Karaoke Room', @room2.room_name)
  end 

  def test_karaoke_room_empty_at_start
    assert_equal(0, @room2.guestlist.length)

  end 

  def test_bar_has_guests
    number_of_occupants = @room1.calculate_guest_total()
    assert_equal(4, number_of_occupants)
  end 

  def test_add_guest_to_karaoke_room
    guests_added = @room2.addGuest("Cyrus", "Balsara")
    assert_equal(1, guests_added)
  end 

  def test_remove_guest_from_bar_room
    remaining_guests = @room1.removeGuest()
    assert_equal(3, remaining_guests)
  end 

  def test_remove_guests_from_karaoke_room
    @room2.addGuest("A", "Guest")
    @room2.addGuest("Another", "Guest")
    @room2.removeGuest()
    assert_equal(1, @room2.guestlist.length)
  end 

  def test_bar_room_capacity
    assert_equal(4, @room1.capacity)
  end 




  def test_karaoke_room_starts_with_no_songs
    assert_equal(0, @room2.guestlist.length)
  end 

  def test_bar_room_has_songs
    number_of_songs = @room1.calculate_song_total()
    assert_equal(3, number_of_songs)
  end 

  def test_add_song_to_karaoke_room
    song_added = @room2.addSong("Dean Martin", "Ain't that a Kick in the Head")
    assert_equal(1, song_added)
  end 









end 