var storyContent = ﻿{"inkVersion":19,"root":[[{"->":"trainCabinDark"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"trainCabinDark":["^It's dark.","\n","^Only a sliver of light peering from under the shutters.","\n","done",{"dark":["^Empty and silent, just as before. A little less now.","\n","done",{"#f":1}],"sliver":[{"->":".^.^.light"},{"#f":1}],"light":["^Dust dances in the narrow beam.","\n","done",{"#f":1}],"shutters":[{"#":"divert"},{"->":"trainCabinLight"},{"#f":1}],"#f":1}],"trainCabinLight":["ev",{"x()":"setLight"},"pop","/ev","\n","^Morning&light washes through the window into the train&cabin. Rusty luggage&racks over vacant benches. The door is closed.","\n","done",{"benches":["^Thin leather on dry wood, sun bleached seetings. A suitcase sits in the corner.","\n","done",{"#f":1}],"door":[{"#":"reload"},"ev",{"VAR?":"rackExtended"},"/ev",[{"->":".^.b","c":true},{"b":["^ Ornate wood and copper. You see a narrow hallway through the dusty porthole. Jammed shut by the luggage&rack. ",{"->":".^.^.^.6"},null]}],[{"->":".^.b"},{"b":["^ ",{"->":"trainHallway"},{"->":".^.^.^.6"},null]}],"nop","\n","done",{"#f":1}],"lock":["^No way to open it without a key.","\n","done",{"#f":1}],"luggageracks":["^Metal bars fan out to increase the surface. ","ev",{"VAR?":"rackExtended"},"/ev",[{"->":".^.b","c":true},{"b":["^ Extended out with a small handle in front.",{"->":".^.^.^.6"},null]}],[{"->":".^.b"},{"b":["^ The handle is pushed back to minimise it.",{"->":".^.^.^.6"},null]}],"nop","\n","done",{"#f":1}],"morninglight":["^It's early still. Dust dances in the golden glow.","\n","done",{"#f":1}],"suitcase":["^Brown leather. Stickers in strange languages mark the body, a small lock at the top.","\n","done",{"#f":1}],"traincabin":["^The cart moans gently as it sways in the wind. Hanging stationary. Unemployed for many years.","\n","done",{"#f":1}],"window":["^No way to open it. Through the dull glass you see a large tree in a station&hall.","\n","done",{"#f":1}],"#f":1}],"trainHallway":["^THE END.","\n","done",{"#f":1}],"unparsable":[["ev","visit",2,"seq","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^Not sure what to do with that.",{"->":".^.^.17"},null],"s1":["pop","^That doesn't seem to help.",{"->":".^.^.17"},null],"#f":5}],"\n","done",{"#f":1}],"global decl":["ev",1,{"VAR=":"rackExtended"},"/ev","end",null],"#f":1}],"listDefs":{}};