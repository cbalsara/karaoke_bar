class Room
  attr_accessor :room_name, :guestlist, :playlist

  def initialize(name, guests, songs)
    @room_name = name
    @guestlist = guests
    @playlist = songs
  end 

  def calculate_guest_total
    result = @guestlist.map{|guest| guest}
    result.length
  end 

  def calculate_song_total
    result = @playlist.map{|song| song}
    result.length
  end 

  def addGuest(first, last)
    result = @guestlist << first + last 
    return result.length
  end 

  def removeGuest()
    @guestlist.shift
    result = @guestlist
    return result.length
  end 

  def addSong(artist, title)
    result = @playlist.<< artist + title
    return result.length
  end 





end 






# name
# guests
# songs 