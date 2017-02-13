require ('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class SongTest < Minitest::Test

  def setup
    @song1 = Song.new("Fleetwood Mac", "Rumours")
  end 

  def test_song_has_artist
    assert_equal('Fleetwood Mac', @song1.artist_name)
  end 






end 