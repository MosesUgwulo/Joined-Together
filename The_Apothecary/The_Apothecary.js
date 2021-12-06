var storyContent = ﻿{"inkVersion":19,"root":[[{"->":"Tutorial.TheCampfire"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"Tutorial":[{"->":".^.TheCampfire"},{"TheCampfire":["^You approach the mouth of the forest. You give a drink of water to Gude, your daughter, from your waterskin. You can feel your daughter shivering in her blanket against your chest. As you enter the shadow of the trees at the entrance of the forest, you see an old fire pit in the centre of a clearing ahead of you.","\n",{"->":".^.^.UnlitCampfire"},{"#f":1}],"UnlitCampfire":[["ev",{"VAR?":"secret"},3,"==","/ev",{"->":".^.b","c":true},{"b":["\n","^With the horseshoe and the flint you have found, you can now attempt to light the fire.","\n",{"->":"Tutorial.LightingTheFire"},{"->":".^.^.^.2"},null]}],[{"->":".^.b"},{"b":["\n","^You see paths hidden in the shadow of the trees leading off to your left and right.","\n","^There is a path ahead of you but you can see it is blocked by some fallen trees further ahead.","\n","ev","str","^Go left","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Go right","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Go straight","/str","/ev",{"*":".^.c-2","flg":20},{"->":".^.^.^.2"},{"c-0":["\n","ev",{"VAR?":"secret"},1,"+","/ev",{"VAR=":"secret","re":true},{"->":"Tutorial.left"},{"#f":5}],"c-1":["\n","ev",{"VAR?":"secret"},1,"+","/ev",{"VAR=":"secret","re":true},{"->":"Tutorial.right"},{"#f":5}],"c-2":["\n","ev",{"VAR?":"secret"},1,"+","/ev",{"VAR=":"secret","re":true},{"->":"Tutorial.straight"},{"#f":5}]}]}],"nop","\n",{"#f":1}],"LightingTheFire":[["ev","str","^Light the fire","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^You use the flint and steel horseshoe to light the campfire. You set down Gude next to the warmth of the fire. She quickly falls asleep. You hold out your hands to warm yourself.","\n","^Suddenly, sparks shoot out from within the flames and surge towards your palms! You watch as the magical wisps of flame dance at your finger tips.","\n","^A warm mystical energy heats your very soul... You have gained the element of Fire!","\n",{"->":"testElement.forestFire"},{"#f":5}]}],{"#f":1}],"right":[["^Piles of shale and stone are scattered on the barren ground in front of you. You see a gathering of large rocks piled in front of you.","\n","ev","str","^Inspect the rocks","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^As you climb between the rocks, your attention is drawn to a small gap between two rocks.","\n","ev","str","^Search the gap","/str","/ev",{"*":".^.c-1","flg":20},{"c-1":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^As you approach the gap and root around inside it, you find small shard of flint. Thinking it may prove useful, you put it into your pack.","\n","ev","str","^Go to campfire","/str","/ev",{"*":".^.c-2","flg":20},{"c-2":["\n",{"->":"Tutorial.UnlitCampfire"},{"#f":5}],"#f":5}]}],{"#f":1}],"left":[["^A large oak tree towers before you. You see a ruined cart wedged in trees further on. There is a shovel planted in a mound of dirt beneath the oak tree.","\n","ev","str","^Approach the shovel","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Inspect the ruined cart","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"->":"Tutorial.shovel"},{"#f":5}],"c-1":["\n",{"->":"Tutorial.cart"},{"#f":5}]}],{"#f":1}],"shovel":[["^You approach the oak tree and find that the shovel is jammed in the dirt beside one of the roots of the oak tree.","\n","ev","str","^Pick up the shovel","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","ev",1,"/ev",{"VAR=":"shovelFound","re":true},"^You pick up the shovel.","\n","^It is clearly old, the head is almost completely rusted through and its handle is snapped at one end.","\n",["ev","str","^Inspect the ruined cart","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Return to the campfire","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"->":"Tutorial.cart"},{"#f":5}],"c-1":["\n",{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"cart":[["^As you approach the cart, you see the remains of several people scattered around, dressed in simple clothes, there is some broken tools scattered around which have completely rusted away.","\n","ev","str","^Search the area around the cart","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^You search the area around the ruined cart.","\n","^You come upon the half buried skeleton of a horse.","\n",["ev",{"VAR?":"shovelFound"},1,"==","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Dig up the remains with the shovel","/str","/ev",{"*":".^.c-0","flg":20},{"->":".^.^.^.6"},{"c-0":["\n","^You use the shovel to unearth the rest of the beasts remains.","\n","^You acquired a steel horseshoe!","\n",["ev","str","^Return to the campfire","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}],{"#f":5}]}]}],[{"->":".^.b"},{"b":["\n","ev","str","^Approach the shovel","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Return to the campfire","/str","/ev",{"*":".^.c-1","flg":20},{"->":".^.^.^.6"},{"c-0":["\n",{"->":"Tutorial.shovel"},{"#f":5}],"c-1":["\n",{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}]}],"nop","\n",{"#f":5}]}],{"#f":1}],"straight":[["^There are fallen trees in your path. It is impossible to make your way through them. Perhaps there is a way to clear away the trees and proceed onwards...","\n","ev","str","^Turn back","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Examine the trees","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"->":"Tutorial.UnlitCampfire"},{"#f":5}],"c-1":["\n",{"->":"Tutorial.Examine"},{"#f":5}]}],{"#f":1}],"Examine":[["^You inspect the fallen trees. There are slashes in their trunks. They seem to have been felled by an axe or another cutting implement.","\n","ev","str","^Go back to campfire","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}],{"#f":1}],"#f":1}],"testElement":[{"->":".^.forestFire"},{"forestFire":[["ev",{"VAR?":"fire"},1,"==",{"VAR?":"water"},1,"==","&&",{"VAR?":"combine"},2,"==","&&","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Combine Elements","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.7"},{"c-0":["\n","^You have made steam and disappered from view.","\n","^You have come to the end of the tutorial.","\n","ev",{"VAR?":"fire"},1,"-","/ev",{"VAR=":"fire","re":true},"ev",{"VAR?":"water"},1,"-","/ev",{"VAR=":"water","re":true},"ev",{"VAR?":"combine"},2,"-","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^.^.return1"},{"#f":5}]}]}],["ev",{"VAR?":"fire"},1,"==",{"VAR?":"earth"},1,"==","&&",{"VAR?":"combine"},2,"==","&&","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Combine Elements","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.7"},{"c-0":["\n","^Congratulations you've created lava and burned yourself severely.","\n",["ev","str","^Try Again?","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","ev",{"VAR?":"fire"},1,"-","/ev",{"VAR=":"fire","re":true},"ev",{"VAR?":"earth"},1,"-","/ev",{"VAR=":"earth","re":true},"ev",{"VAR?":"combine"},2,"-","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^.^.^"},{"#f":5}]}],{"#f":5}]}]}],["ev",{"VAR?":"fire"},1,"==",{"VAR?":"air"},1,"==","&&",{"VAR?":"combine"},2,"==","&&","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Combine Elements","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.7"},{"c-0":["\n","^Congratulations you have spontaneously combusted.","\n",["ev","str","^Try Again?","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","ev",{"VAR?":"fire"},1,"-","/ev",{"VAR=":"fire","re":true},"ev",{"VAR?":"air"},1,"-","/ev",{"VAR=":"air","re":true},"ev",{"VAR?":"combine"},2,"-","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^.^.^"},{"#f":5}]}],{"#f":5}]}]}],["ev",{"VAR?":"water"},1,"==",{"VAR?":"earth"},1,"==","&&",{"VAR?":"combine"},2,"==","&&","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Combine Elements","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.7"},{"c-0":["\n","^Congratulations you have created mud and gotten your clothes dirty","\n",["ev","str","^Try Again?","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","ev",{"VAR?":"water"},1,"-","/ev",{"VAR=":"water","re":true},"ev",{"VAR?":"earth"},1,"-","/ev",{"VAR=":"earth","re":true},"ev",{"VAR?":"combine"},2,"-","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^.^.^"},{"#f":5}]}],{"#f":5}]}]}],["ev",{"VAR?":"water"},1,"==",{"VAR?":"air"},1,"==","&&",{"VAR?":"combine"},2,"==","&&","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Combine Elements","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.7"},{"c-0":["\n","^Congratulations dark storm clouds have appeared above you as torrential","\n","^rain pours down on you, you're now drenched.","\n",["ev","str","^Try Again?","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","ev",{"VAR?":"water"},1,"-","/ev",{"VAR=":"water","re":true},"ev",{"VAR?":"air"},1,"-","/ev",{"VAR=":"air","re":true},"ev",{"VAR?":"combine"},2,"-","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^.^.^"},{"#f":5}]}],{"#f":5}]}]}],["ev",{"VAR?":"earth"},1,"==",{"VAR?":"air"},1,"==","&&",{"VAR?":"combine"},2,"==","&&","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Combine Elements","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.7"},{"c-0":["\n","^Congratulations you have created a sandstorm and it's getting in your eyes","\n","^you have successfully blinded and can no longer continue.","\n",["ev","str","^Try Again?","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","ev",{"VAR?":"earth"},1,"-","/ev",{"VAR=":"earth","re":true},"ev",{"VAR?":"air"},1,"-","/ev",{"VAR=":"air","re":true},"ev",{"VAR?":"combine"},2,"-","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^.^.^"},{"#f":5}]}],{"#f":5}]}]}],[{"->":".^.b"},{"b":["\n","^This is WIP and is only here for the playtesting","\n","^Which elements would you like to combine","\n","ev","str","^Fire","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Water","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^Earth","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^Air","/str","/ev",{"*":".^.c-3","flg":4},{"->":".^.^.^.7"},{"c-0":["\n","ev",{"VAR?":"fire"},1,"+","/ev",{"VAR=":"fire","re":true},"ev",{"VAR?":"combine"},1,"+","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^"},{"#f":5}],"c-1":["\n","ev",{"VAR?":"water"},1,"+","/ev",{"VAR=":"water","re":true},"ev",{"VAR?":"combine"},1,"+","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^"},{"#f":5}],"c-2":["\n","ev",{"VAR?":"earth"},1,"+","/ev",{"VAR=":"earth","re":true},"ev",{"VAR?":"combine"},1,"+","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^"},{"#f":5}],"c-3":["\n","ev",{"VAR?":"air"},1,"+","/ev",{"VAR=":"air","re":true},"ev",{"VAR?":"combine"},1,"+","/ev",{"VAR=":"combine","re":true},{"->":".^.^.^.^"},{"#f":5}]}]}],"nop","\n",{"#f":1}],"return1":["end",{"#f":1}],"#f":1}],"global decl":["ev",0,{"VAR=":"secret"},0,{"VAR=":"shovelFound"},0,{"VAR=":"fire"},0,{"VAR=":"water"},0,{"VAR=":"air"},0,{"VAR=":"earth"},0,{"VAR=":"combine"},"/ev","end",null],"#f":1}],"listDefs":{}};