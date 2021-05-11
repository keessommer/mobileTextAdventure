EXTERNAL setLight() 
EXTERNAL setDark()

// writing guides:
// - use #divert if a stitch leads to a knot
// - use #reload if a stitch makes a change to its parent knot
// - use #divertConditional if a stitch leads to a knot in certain cases
// - use _ to differentiate homonyms
// - no more than 20 words
// - refer back to other elements in the knot
// - every noun in knot needs an entry, not every noun in stitch
// - knots have to be at least two lines

-> trainCabinDark

=== trainCabinDark ===
It's dark.
Only a sliver of light peering from under the shutters.
->DONE

    = dark
    Empty and silent, just as before. A little less now.
    ->DONE

    = sliver
    ->light

    = light
    Dust dances in the narrow beam.
    ->DONE

    = shutters
    #divert
    -> trainCabinLight

=== trainCabinLight ===
VAR rackExtended = true
~setLight()
Morning&light washes through the window into the train&cabin. Rusty luggage&racks over vacant benches. 
The door is closed.
->DONE
    = _hallway
    #divert
    ->trainHallway

    = benches
    Thin leather on dry wood, sun bleached seatings. A suitcase sits in the corner.
    -> DONE
    
    = door
    {rackExtended: Ornate wood and copper. A narrow hallway behind the dusty porthole. The door's jammed shut by a luggage&rack. | The door painfully slides open to reveal a narrow _hallway.}
    -> DONE
    
    = handle
    ~rackExtended = !rackExtended
    {rackExtended: Screeching, the rack pulls out from the wall. | The rusty mechanism pushes back into the wall.}
    ->DONE
    
    = lock
    No way to open it without a key.
    ->DONE
    
    = luggagerack
    Metal bars fan out from the wall. {rackExtended: Fully extended with a small handle in front.| Handle pushed back to minimise the contraption.}
    ->DONE
    
    = luggageracks
    ->luggagerack
    
    = morninglight
    It's early still. Dust dances in the golden glow.
    ->DONE
    
    = suitcase
    Brown leather. Stickers in strange languages mark the body, a small lock on top. 
    ->DONE
    
    = traincabin
    The cart moans gently as it sways in the wind. Hanging stationary. Unemployed for many years.
    ->DONE
    
    = window
    No way to open it. Through the dull glass you see a large tree in a station&hall.
    ->DONE

=== trainHallway ===
THE END.
->DONE

=== unparsable ===
{~Not sure what to do with that.|That doesn't seem to help.}
->DONE

