class Venue

  attr_reader :name, :rooms, :bank_balance

  def initialize(name, rooms)
    @name = name # string
    @rooms = rooms # array of room objects
    @bank_balance = 0.0 # bank balance
  end

  def find_free_room(number_guests)
    #return the smallest empty room for the number of guests
    return nil if number_guests == 0
    @rooms.sort_by! {|room| room.max_guests}
    for room in rooms
      if room.guest_list.count == 0 && room.max_guests >= number_guests
        return room
      end
    end
    return nil
  end

  def cashier(guests, free_room)
    guests.each do |guest|
      money_from_guest = guest.handover_money(free_room.room_cost)
      # if guest can't afford it, zero is returned.
      if money_from_guest == free_room.room_cost
        #credit room wallet
        @bank_balance += free_room.room_cost
        #add the guest to the room
        free_room.guest_list << guest
      end
    end
  end


  def checkin_guests(guests, playlist)
    # check we got passed guests and a playlist
    return nil if guests.count == 0 && playlist.count == 0
    #identify free room
    free_room = find_free_room(guests.count)
    #if no room free, return with error
    return nil if free_room == nil

    # handle the money and enter room
    cashier(guests, free_room)

    # assign the playlist if we have people in the room
    if free_room.guest_list.count > 0
      free_room.play_list = playlist
    else
      free_room.play_list = []
      return nil
    end
    return free_room
  end

  def checkout_guests(the_room)
    the_room.guest_list = []
    the_room.play_list = []
  end


end
