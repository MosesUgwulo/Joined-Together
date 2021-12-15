var storyContent = ﻿{"inkVersion":19,"root":[[{"->":"Tutorial.TheCampfire"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"Tutorial":[{"->":".^.TheCampfire"},{"TheCampfire":[{"#":"IMAGE: Apot.png"},"^You approach the mouth of the forest. You give a drink of water to Gude, your daughter, from your waterskin. You can feel your daughter shivering in her blanket against your chest. As you enter the shadow of the trees at the entrance of the forest, you see an old fire pit in the centre of a clearing ahead of you.","\n",{"->":".^.^.UnlitCampfire"},{"#f":1}],"UnlitCampfire":[["ev",{"VAR?":"secret"},3,"==","/ev",{"->":".^.b","c":true},{"b":["\n","^With the horseshoe and the flint you have found, you can now attempt to light the fire.","\n",{"->":"Tutorial.LightingTheFire"},{"->":".^.^.^.2"},null]}],[{"->":".^.b"},{"b":["\n","^You see paths hidden in the shadow of the trees leading off to your left and right.","\n","^There is a path ahead of you but you can see it is blocked by some fallen trees further ahead.","\n","ev","str","^Go left","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Go right","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Go straight","/str","/ev",{"*":".^.c-2","flg":20},{"->":".^.^.^.2"},{"c-0":["\n",{"#":"CLEAR"},"ev",{"VAR?":"secret"},1,"+","/ev",{"VAR=":"secret","re":true},{"->":"Tutorial.left"},{"#f":5}],"c-1":["\n",{"#":"CLEAR"},"ev",{"VAR?":"secret"},1,"+","/ev",{"VAR=":"secret","re":true},{"->":"Tutorial.right"},{"#f":5}],"c-2":["\n",{"#":"CLEAR"},"ev",{"VAR?":"secret"},1,"+","/ev",{"VAR=":"secret","re":true},{"->":"Tutorial.straight"},{"#f":5}]}]}],"nop","\n",{"#f":1}],"LightingTheFire":[["ev","str","^Light the fire","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"#":"CLEAR"},"^You use the flint and steel horseshoe to light the campfire. You set down Gude next to the warmth of the fire. She quickly falls asleep. You hold out your hands to warm yourself.","\n","^Suddenly, sparks shoot out from within the flames and surge towards your palms! You watch as the magical wisps of flame dance at your finger tips.","\n","^A warm mystical energy heats your very soul... You have gained the element of Fire!","\n",{"->":"combineElements.burnTrees"},{"#f":5}]}],{"#f":1}],"right":[["^Piles of shale and stone are scattered on the barren ground in front of you. You see a gathering of large rocks piled in front of you.","\n","ev","str","^Inspect the rocks","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^As you climb between the rocks, your attention is drawn to a small gap between two rocks.","\n","ev","str","^Search the gap","/str","/ev",{"*":".^.c-1","flg":20},{"c-1":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^As you approach the gap and root around inside it, you find small shard of flint. Thinking it may prove useful, you put it into your pack.","\n","ev","str","^Go to campfire","/str","/ev",{"*":".^.c-2","flg":20},{"c-2":["\n",{"#":"CLEAR"},{"->":"Tutorial.UnlitCampfire"},{"#f":5}],"#f":5}]}],{"#f":1}],"left":[["^A large oak tree towers before you. You see a ruined cart wedged in trees further on. There is a shovel planted in a mound of dirt beneath the oak tree.","\n","ev","str","^Approach the shovel","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Inspect the ruined cart","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"->":"Tutorial.shovel"},{"#f":5}],"c-1":["\n",{"->":"Tutorial.cart"},{"#f":5}]}],{"#f":1}],"shovel":[["^You approach the oak tree and find that the shovel is jammed in the dirt beside one of the roots of the oak tree.","\n","ev","str","^Pick up the shovel","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","ev",1,"/ev",{"VAR=":"shovelFound","re":true},"^You pick up the shovel.","\n","^It is clearly old, the head is almost completely rusted through and its handle is snapped at one end.","\n",["ev","str","^Inspect the ruined cart","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Return to the campfire","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"#":"CLEAR"},{"->":"Tutorial.cart"},{"#f":5}],"c-1":["\n",{"#":"CLEAR"},{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"cart":[["^As you approach the cart, you see the remains of several people scattered around, dressed in simple clothes, there is some broken tools scattered around which have completely rusted away.","\n","ev","str","^Search the area around the cart","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^You search the area around the ruined cart.","\n","^You come upon the half buried skeleton of a horse.","\n",["ev",{"VAR?":"shovelFound"},1,"==","/ev",{"->":".^.b","c":true},{"b":["\n","ev","str","^Dig up the remains with the shovel","/str","/ev",{"*":".^.c-0","flg":20},{"->":".^.^.^.6"},{"c-0":["\n","^You use the shovel to unearth the rest of the beasts remains.","\n","^You acquired a steel horseshoe!","\n",["ev","str","^Return to the campfire","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"#":"CLEAR"},{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}],{"#f":5}]}]}],[{"->":".^.b"},{"b":["\n","ev","str","^Approach the shovel","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Return to the campfire","/str","/ev",{"*":".^.c-1","flg":20},{"->":".^.^.^.6"},{"c-0":["\n",{"#":"CLEAR"},{"->":"Tutorial.shovel"},{"#f":5}],"c-1":["\n",{"#":"CLEAR"},{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}]}],"nop","\n",{"#f":5}]}],{"#f":1}],"straight":[["^There are fallen trees in your path. It is impossible to make your way through them. Perhaps there is a way to clear away the trees and proceed onwards...","\n","ev","str","^Turn back","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Examine the trees","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"#":"CLEAR"},{"->":"Tutorial.UnlitCampfire"},{"#f":5}],"c-1":["\n",{"#":"CLEAR"},{"->":"Tutorial.Examine"},{"#f":5}]}],{"#f":1}],"Examine":[["^You inspect the fallen trees. There are slashes in their trunks. They seem to have been felled by an axe or another cutting implement.","\n","ev","str","^Go back to campfire","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"#":"CLEAR"},{"->":"Tutorial.UnlitCampfire"},{"#f":5}]}],{"#f":1}],"findHerb":[["^As you walk down the path into the forest a peculiar but familiar bush with red berrys catches your eye.","\n","ev","str","^Inspect the bush","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^On closer inspection you recognise that this is a ginseng plant. Its roots are know to help heal the body and are believed to have magical restorative propertys.","\n",["ev","str","^Harvest some ginseng root","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^You acquired some ginseng root. You placed it into your bag.","\n",{"#":"CLEAR"},["ev","str","^Enter the forest","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"enterTheForest.theForest"},{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":1}],"#f":1}],"enterTheForest":[{"->":".^.theForest"},{"theForest":[["^Tall boreal trees tower above you. The trees create a thick canopy, blocking the sun from reaching the ground.","\n","ev","str","^Venture onwards","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^[You notice your daughter is looking flushed]","\n",["ev","str","^Check on her","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Let her suffer","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"->":".^.^.^.^.^.^.daughtersFever"},{"#f":5}],"c-1":["\n",{"->":".^.^.^.^.^.^.suffer"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"daughtersFever":[["^You check her temperature with your hand and she's burning up.","\n","^You decide to go and look for some water for her to drink.","\n","ev","str","^Go find water","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":".^.^.^.^.findWaterPT1"},{"#f":5}]}],{"#f":1}],"findWaterPT1":["^You venture further into the dark woods. You stop at an intersection of three paths. Down the left path you see a faint light break through the canopy. Down the middle path the path seem to become darker and near impossible to any further. The final path on the right is lined with flowers and wafts a floural scent in your direction.","\n",["ev","str","^Go Left","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Go Straight","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Go Right","/str","/ev",{"*":".^.c-2","flg":20},"ev","str","^After 3 paths checked, find spritea taking daughter","/str","/ev",{"*":".^.c-3","flg":20},{"c-0":["\n",{"->":".^.^.^.^.path1"},{"#f":5}],"c-1":["\n",{"->":".^.^.^.^.path2"},{"#f":5}],"c-2":["\n",{"->":".^.^.^.^.path3"},{"#f":5}],"c-3":["\n",{"->":".^.^.^.^.chaseSprites"},{"#f":5}]}],{"#f":1}],"suffer":[["^You sick fuck, you're just going to let her suffer like that?","\n","ev","str","^Check on her","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":".^.^.^.^.daughtersFever"},{"#f":5}]}],{"#f":1}],"path1":[["^You walk down the path and step into an opening in the woods. Light breaks through the canopy above you and shines onto...","\n","ev","str","^OPTION 1","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^[MORE DIALOGUE]","\n",["ev","str","^ANOTHER OPTION IF NEEDED","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":".^.^.^.^.g-0"},{"#f":5}]}],{"#f":5}],"g-0":["^SOME MORE DIALOGUE IF NEEDED","\n","ev","str","^OTHER OPTION HERE OR GO BACK","/str","/ev",{"*":".^.c-1","flg":20},{"c-1":["\n","^[MORE DIALOGUE IF NEEDED]","\n",{"->":".^.^.^.^.^.findWaterPT1"},{"#f":5}],"#f":5}]}],{"#f":1}],"path2":[["^As you walk down the path your vision begins to fade and soon you are lost in the darkness.","\n","ev","str","^Try and find a way back","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^(Gude goes missing? set up fairys.)","\n",["ev","str","^ANOTHER OPTION","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^[EVEN MORE DIALGUE]","\n",{"->":".^.^.^.^.^.^.findWaterPT1"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"path3":[["^You walk down the flowery path and arrive at a meadow of gorgous sweet smelling flowers.","\n","ev","str","^Smell the flowers","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^[MORE DIALOGUE HERE]","\n","ev","str","^Inspect the flowers","/str","/ev",{"*":".^.c-1","flg":20},{"c-1":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^[Something?]","\n",["ev","str","^ANOTHER OPTION","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^[EVEN MORE DIALGUE]","\n",{"->":".^.^.^.^.^.^.findWaterPT1"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"chaseSprites":[["^You see a group of forest sprites carrying Gude down a narrow forest path.","\n","ev","str","^Chase after them","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^You pursue the sprites weaving around and under trees.","\n",["ev","str","^Continue pursuit","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^[CATCH UP TO SPRITES]","\n","^[FIND VILLAGE OF SPRITES, THEY TAKE CARE OF DAUGHTER]","\n",{"->":".^.^.^.^.^.^.spriteVillage"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"spriteVillage":[["^[THEY TELL YOU WHERE TO FIND WATER]","\n","ev","str","^LEAVE TO GO GET WATER","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^[GET WATER ELEMENT]","\n",["ev","str","^RETURN BACK TO SPRITE VILLAGE","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^[SEE DAUGHTER STABLIZED]","\n",["ev","str","^THANK SPRITES AND LEAVE TO FIND HERB","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"enterTheForest.findHerb2"},{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":1}],"findHerb2":["^[SOME DIALOGUE ABOUT USING FIRE AND WATER TO FIND HERB - TBD]","\n","end",{"#f":1}],"#f":1}],"combineElements":[{"->":".^.burnTrees"},{"burnTrees":[["ev",{"VAR?":"fire"},1,"==","/ev",{"->":".^.b","c":true},{"b":["\n","^The element of fire dances from your hand and jumps towards the trees","\n","^burning away at them and clearing a path.","\n","ev",{"VAR?":"fire"},1,"-","/ev",{"VAR=":"fire","re":true},{"->":"Tutorial.findHerb"},{"->":".^.^.^.2"},null]}],[{"->":".^.b"},{"b":["\n","ev","str","^Fire","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.2"},{"c-0":["\n","^You approach some nearby trees","\n","ev",{"VAR?":"fire"},1,"+","/ev",{"VAR=":"fire","re":true},{"->":".^.^.^.^"},{"#f":5}]}]}],"nop","\n",{"#f":1}],"#f":1}],"global decl":["ev",0,{"VAR=":"secret"},0,{"VAR=":"shovelFound"},0,{"VAR=":"fire"},0,{"VAR=":"water"},0,{"VAR=":"air"},0,{"VAR=":"earth"},0,{"VAR=":"combine"},"/ev","end",null],"#f":1}],"listDefs":{}};