EXTERNAL setLight() 
EXTERNAL setDark()

// writing guides:
// - use #divert if a stitch leads to a knot
// - use #reload if a stitch makes a changes to its parent knot
// - no more than 20 words
// - refer back to other elements in the knot
// - every noun in knot needs an entry, not every noun in stitch

->squareStart

=== squareStart ===
VAR pigeonsFlew = false
~setLight()
A small square. 
White cobblestone shines in the morning&light. {pigeonsFlew: An old baobap in the center.|Doves coo around an old baobap.} Narrow buildings separated by misty alleys.
->DONE

= alleys
The narrow streets glisten in the morning&light. Hazy spaces between apartment&buildings and cornerstores.
->DONE

= alleyways
-> alleys

= apartmentbuildings
Overgrown white marble. Long since abandoned. No way to get inside anywhere. Some alleyways running between them.
->DONE

= baobap
Thick and strong. The rich canopy glistens in the morning&light. {pigeonsFlew: It breaks the surrounding cobblestones into chaos. |Doves gather at its base, scavaging seeds.}
-> DONE

= buildings
The square is encircled by tall apartment&buildings and cornerstores. Sparsley separated by narrow alleyways.
->DONE

= city
Not a soul to be found. Except you.
->DONE

= cobblestone
Stark white marble. Vines crawl through and up apartment&buildings and cornerstores. A large tree breaks the pattern into chaos.
->DONE

=cobblestones
-> cobblestone

= cornerstores
Once busy and alive, now silent and empty. Some facing the square, others the alleys connecting them to the city.
->DONE

= morninglight
Early still. The city reflects golden in the bright beams.
->DONE

= doves
#reload
~ pigeonsFlew = true
Calmly strolling around the the tree. A current of gentle cooing. As you approach, the flock flies up over the buildings.
->DONE

= square
An old part of the city. Vines break through the cobblestone and crawl along abandoned buildings. 
->DONE

= tree
-> baobap

=== unparsable ===
{~Not sure what to do with that.|That doesn't seem to help.}
->DONE

