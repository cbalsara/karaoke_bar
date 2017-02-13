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





end 






# name
# guests
# songs 