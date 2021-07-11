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

-> smallRoom

VAR exitType = "none"

==smallRoom
    ~ setDark()
    _
    You're in a room.
    ->DONE
    =room
        Can't see anything without any light.
        ->DONE
    =you
        Just a person, but who really?
        ->DONE
    =light
        #divert
        ->smallRoomLight
        
==smallRoomLight
    ~setLight()
    The light reveals four empty walls.
    You'd expect an exit, but can't find any.
    ->DONE
    
    =light
        Not sure where the light is coming from.
        ->DONE
    =walls
        Bare concrete walls.
        ->DONE
    =exit
        A door, a window, really anything.
        ->DONE
    =door
        #divert
        ~exitType = "door"
        ->largeRoom
    =window
        #divert
        ~exitType = "window"
        ->largeRoom
        
==largeRoom
    {exitType:
    - "door": Screeching, the door opens up to reveal another room.
    - "window": Slowly, the window slides open into another room.
    }
    A closed door at the far end and a piano in the center.
    ->DONE
    =door
        Sadly, it's locked.
        ->DONE
    =room
        Larger and mostly empty.
        ->DONE
    =piano
        Old. You press a key and it screeches loudly.
        ->DONE
    =doorkey
        You turn the key in the lock and the door opens.
        THE END.
        ->DONE
    =keydoor
        ->doorkey

==unparsable
    {~Not sure what to do with that.|That doesn't seem to help.}
    ->DONE