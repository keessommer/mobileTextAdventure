EXTERNAL setLight() 
EXTERNAL setDark()

// writing guides:
// - use #divert if a stitch leads to a knot
// - use #reload if a stitch makes a changes to its parent knot
// - no more than 20 words
// - refer back to other elements in the knot
// - every noun in knot needs an entry, not every noun in stitch

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
Morning&light washes through the window into the train&cabin. Rusty luggage&racks over vacant benches. The door is closed.
->DONE

= benches
Thin leather on dry wood, sun bleached seetings. A suitcase sits in the corner.
-> DONE

= door
#reload
{rackExtended: Ornate wood and copper. You see a narrow hallway through the dusty porthole. Jammed shut by the luggage&rack. | -> trainHallway}
-> DONE

= lock
No way to open it without a key.
->DONE

= luggageracks
Metal bars fan out to increase the surface. {rackExtended: Extended out with a small handle in front.| The handle is pushed back to minimise it.}
->DONE

= morninglight
It's early still. Dust dances in the golden glow.
->DONE

= suitcase
Brown leather. Stickers in strange languages mark the body, a small lock at the top. 
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

