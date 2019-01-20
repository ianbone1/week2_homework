
## Solution

1. Started with the Song Class as it was the smallest
1. Next came the Guest Class as it required a Favourite Song of Type Song
1. Next I did the Room Class as it required and array of Guests and an array of Songs
1. Next came the Venue Class as it required an array of Rooms.
2. The Venue Class then controlled the Guests being added to rooms, making sure the party of Guests went into the smallest available room. Charging each Guest as they were added to a room. If they had not enough money, they were ignored and not added to the room. (Enhancement opportunity: if some of the party can't afford to sing, perhaps a smaller room could be found)
1. Once Guests were charged and added to a room, a playlist array of Songs was added to the room.
2. You could then call the favourite song method and get an array back of who shouted that their favourite song was in the playlist.
That gave a fully working Karaoke Bar. Songs could be created, Guests could be created with fav song, and rooms could be loaded with both Guests and Songs and money exchanged for the service.
1. Next I wished I had done the Bar Lab and not the Snowman Lab!
2. Drink Class was created, and a Bar Class which had a name and an array of Drinks.
Venue Class extented to have a Bar object (Venue would have one bar to service all rooms, not a bar per room)
2. Guest Class was extended to add Age and Units Of Alcohold Drunk.
2. Venue could then take a Guest ordering a Drink, and if the Drink was in the Bar, the guest was old enough, and they were not too drunk and they could afford the drink, they got it and money exchanged and alcohol consumed increased.

#### Done!


## The OO CodeClan Caraoke (CCC)

You have been approached to build software for a Karaoke bar. Specifically, they want you to build a software for checking guests in and out, plus handling songs.

Your program should be test driven and should be able to:

#### - Done
- Create rooms, songs and guests
#### - Done
- Check in guests to rooms/Check out guests from rooms
#### - Done
- Add songs to rooms

### Extensions

#### - Done
- What happens if there are more guests trying to be checked in than there is free space in the room? 
#### - Done
- Karaoke venues usually have an entry fee - So the guests could have money so they can pay it. 


### Advanced extensions

#### - Done
- Guests could have a favourite song, and if their favourite song is on the room's playlist, they can cheer loudly! (return a string like "Whoo!") ### - Done
#### - Done
- Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?

- Add anything extra you think would be good to have at a karaoke venue!
