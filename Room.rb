class Room

  attr_reader :room_name, :max_guests, :room_cost, :guest_list, :play_list
  attr_writer :play_list, :guest_list

  def initialize(room_name, max_guests, room_cost)
    @room_name = room_name # string
    @max_guests = max_guests #integer
    @room_cost = room_cost #cost per guest
    @guest_list = [] #array of Guests
    @play_list = [] #array of Songs
  end

  def check_favourite_songs
    favourites = []
    @guest_list.each do |guest|
      if @play_list.include?(guest.favourite_song)
        favourites << "#{guest.name} shouts 'Whoo'!"
      end
    end
    return favourites
  end



end
