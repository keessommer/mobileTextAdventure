EXTERNAL setLight()
EXTERNAL setDark()

-> carDark

==intro1
    You seem lost, little one. 
    Don't be afraid. Simply double click or tap any word to interact with it.
    ->DONE
    =unparsableOverride
        #divert
        ->intro2
==intro2
    Yes. Good. Very good. 
    To combine two words, click or tap both of them once.
    ->DONE
    =unparsableOverride
        #divert
        ->intro3

==intro3
    Perfection. 
    Now, it's time for you to wake&up. 
    Until we meet again, little one.
    ->DONE
    =wakeup
        #divert
        ->carDark
    =unparsableOverride
        Don't be afraid. 
        You simply have to wake&up.
        ->DONE

==carDark
    ~ setDark()
    Head spinning.
    Too dark to see anything with the interior&light off.
    ->DONE
    =interiorlight
        #divert
        ->carLight
    =head
        Hurts like hell. Must've been quite the crash.
        ->DONE
    =spinning
        Round and round and round and round
        ->DONE
    =dark
        Black. 
        Nothing but the faint afterglow of the interior&light.
        ->DONE
        
==carLight
    ~ setLight()
    Light flickers and your eyes adjust. The thing's wrecked. 
    Windshield smashed. Door bent. Glove&compartment stuck open.
    ->DONE
    =light
        Interior&light shining bright. Thank god that's still working.
        ->DONE
    =interiorlight
        #divert
        ->carDark
    =glovecompartment
        Keys, some gum and the paperwork. Looks like a little safety&hammer in the back.
        ->DONE
    =windshield
        A large crack where you hit the tree. Some branches sticking through.
        ->DONE
    =crack
        Broken. Like a river running through glass.
        ->DONE
    =tree
        Looks like a bristlecone pine. Beautiful specimen. Shame about the car lodged in the side.
        ->DONE
    =gum
        very chewy. Been in there for years. 
        ->DONE
    =door
        Bent shut. With the car collapsed like a harmonica, you're gonna have to find another way out.
        ->DONE
    =safetyhammerwindshield
        You smash the glass with the little hammer. A crystal storm hails down on the dashboard. Looks like you're out.
        ->DONE
        
==unparsable
    {~Not sure what to do with that.|That doesn't seem to help.}
    ->DONE

==you
    {~Just you. <br>But who really?|A person. <br>Or at least the shape of one.}
    ->DONE

==your
    -> you