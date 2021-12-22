VAR secret = 0
VAR shovelFound = false
VAR fire = 0
VAR water = 0
VAR air = 0
VAR earth = 0
VAR combine = 0
VAR flint = false
VAR steel = false
VAR fruit = 0
VAR key = false
VAR finalDoor = 0
-> Tutorial.Intro
    
=== Tutorial

    = Intro
    # IMAGE: ApotScreen.png
    You are an Apothecary named Leigh. Your daughter, Gude, is gravely ill and you are verturing into a forest to gather herbs to make medicine for her.
    * [START]
    # CLEAR
    -> TheCampfire

    = TheCampfire
        # IMAGE: FireUnlit.png
        You approach the mouth of the forest. You give a drink of water to Gude, your daughter, from your waterskin. You can feel your daughter shivering in her blanket against your chest. As you enter the shadow of the trees at the entrance of the forest, you see an old fire pit in the centre of a clearing ahead of you.
        -> UnlitCampfire
        
        = UnlitCampfire
        {
        
        - secret == 3:
            With the horseshoe and the flint you have found, you can now attempt to light the fire.
                -> LightingTheFire
                
        - secret == 2 && flint == true && steel == true:
            With the horseshoe and the flint you have found, you can now attempt to light the fire.
                -> LightingTheFire
            
        - else:
            You see paths hidden in the shadow of the trees leading off to your left and right.
            There is a path ahead of you but you can see it is blocked by some fallen trees further ahead.
            * [Go left]
             # CLEAR
             # IMAGE: BigOak.png
            ~ secret = secret + 1
            ~ steel = true
            -> left
            
            * [Go right]
            # CLEAR
            # IMAGE: FlintRock.png
            ~ secret = secret + 1
            -> right
            
            * [Go straight]
            # CLEAR
            ~ secret = secret + 1
            -> straight
            
            
                
        
        }
        
        = LightingTheFire
            * [Light the fire]
            # CLEAR
            # IMAGE: FireLit.png
                You use the flint and steel horseshoe to light the campfire. You set down Gude next to the warmth of the fire. She quickly falls asleep. You hold out your hands to warm yourself. 
                Suddenly, sparks shoot out from within the flames and surge towards your palms! You watch as the magical wisps of flame dance at your finger tips. 
                A warm mystical energy heats your very soul... You have gained the element of Fire!
                -> combineElements.burnTrees

    
    = right
    Piles of shale and stone are scattered on the barren ground in front of you. You see a gathering of large rocks piled in front of you.
     * [Inspect the rocks]
       - As you climb between the rocks, your attention is drawn to a small gap between two rocks.
       * [Search the gap]
       ~ flint = true
       - As you approach the gap and root around inside it, you find small shard of flint. Thinking it may prove useful, you put it into your pack.

    * [Go to campfire]
    # CLEAR
    -> UnlitCampfire
    
    
    = left
    A large oak tree towers before you. You see a ruined cart wedged in trees further on. There is a shovel planted in a mound of dirt beneath the oak tree.
    
        *[Approach the shovel]
        -> shovel
        
        *[Inspect the ruined cart]
        -> cart
        
        =shovel
        You approach the oak tree and find that the shovel is jammed in the dirt beside one of the roots of the oak tree.
        * [Pick up the shovel]
        ~ shovelFound = true
        You pick up the shovel. 
        It is clearly old, the head is almost completely rusted through and its handle is snapped at one end.
        **[Go to the ruined cart]
        # CLEAR
        # IMAGE: OldCart.png
        -> cart
        **[Return to the campfire]
        # CLEAR
        -> UnlitCampfire
        
        
        =cart
        As you approach the cart, you see the remains of several people scattered around, dressed in simple clothes, there is some broken tools scattered around which have completely rusted away.
            +[Search the area around the cart]
            -You search the area around the ruined cart.
            You come upon the half buried skeleton of a horse.
            {
            - shovelFound == true:
            *[Dig up the remains with the shovel]
            ~ steel = true
            You use the shovel to unearth the rest of the beasts remains.
            You acquired a steel horseshoe!
            * *[Return to the campfire]
            # CLEAR
            -> UnlitCampfire
            - else:
            There doesn't seem to be anything you can do here at the moment.
            *[Approach the shovel]
            # CLEAR
            -> shovel
            *[Return to the campfire]
            # CLEAR
            -> UnlitCampfire
            }
            
    
    = straight
    There are fallen trees in your path. It is impossible to make your way through them. Perhaps there is a way to clear away the trees and proceed onwards...
        * [Turn back]
        # CLEAR
        -> UnlitCampfire
        * [Examine the trees]
        # CLEAR
        -> Examine
        

        = Examine
        You inspect the fallen trees. There are slashes in their trunks. They seem to have been felled by an axe or another cutting implement.
        * [Go back to campfire]
        # CLEAR
        -> UnlitCampfire


    = exit
    You proceed down the now clear pathway and into the forest.
        *[Enter the forest]
        -> toWater.theForest

    = findHerb
    As you walk down the path into the forest a peculiar but a familiar bush with red berries catches your eye.
        *[Inspect the bush]
            On closer inspection you recognise that this is a ginseng plant. Its roots are know to help heal the body and are believed to have magical restorative propertys.
                * *[Harvest some ginseng root]
                # IMAGE: Ginseng.png
                    You acquired some ginseng root. You placed it into your bag.
                    
                    * * *[Enter the forest]
                    # CLEAR
                    -> toWater.theForest

    
    
=== toWater
    
    = theForest
    Tall boreal trees tower above you. The trees create a thick canopy, blocking the sun from reaching the ground.
        *[Venture onwards]
            [You notice your daughter is looking flushed]
                **[Check on her]
                    -> daughtersFever
                    
                **[Let her suffer]
                    -> suffer
                    
    = daughtersFever
    You check her temperature with your hand and she's burning up.
    You decide to go and look for some water for her to drink.
        *[Go find water]
            -> findWaterPT1
            
            = findWaterPT1
            # IMAGE: LightDarkPaths.png
            You venture further into the dark woods. You stop at an intersection of two paths. To your left you see a faint light break through the canopy. The path on the right leads between densely packed trees which submerge the area deeper inside in darkness.
                **[Go Left]
                # CLEAR
                -> pathLeft
                
                **[Go Right]
                # CLEAR
                -> pathRight
    
    = suffer
    You sick fuck, you're just going to let her suffer like that?
        *[Check on her]
        -> daughtersFever
    
    = pathLeft
    You walk down the path and step into an opening in the woods. Light breaks through the canopy above you and shines onto a ancient, gnarled tree stump.
        *[Approach the tree stump]
            As you approach the tree stump, you begin to smell an enticing scent wafting from it. As you get closer, the smell begins to draw you in and you feel your mind drifting off.
                **[Continue approaching the stump]
                    You continue to approach the stump. The smell drags you onward     until finally you stand in front of the stump. Your hand, as if possessing a mind of it's own, reaches out to grab the stump. As your hand touches the stump, the smell grows overpowering and your consciouness grows hazy. You fall to the ground, unconscious.
                        -> wakeUp
                **[Back away]
                    You turn away and start walking away from the stump. As you move further away, the smell begins to grow weaker. Suddenly, as if angered, the smell from the stump surges back into your senses. Your mind feels as if it is full of wool and you distantly feel yourself falling to the ground as you fall into unconciousness. 
                    -> wakeUp
    
    = pathRight
    As you walk down the path your vision begins to fade and soon you are lost in the darkness. You begin to feel as if you are being watched, and you can hear rustling within the undergrowth surrounding the path.
        *[Turn back]
            As you turn back towards the crossroads, the rustling grows louder. Suddenly, a ball of pink glowing energy flies out from between the trees and hits your chest. You reel back from the blast and you feel yourself collapse before you fall unconcious.
            -> wakeUp
        *[Proceed onwards]
            You proceed further down the shadowy path. Suddenly, a childlike laugh echoes all around you.
                **[Turn back]
                # IMAGE: MagicInDark.png
                    As you turn back towards the crossroads, the rustling grows louder. Suddenly, a ball of pink glowing energy flies out from between the trees and hits your chest. You reel back from the blast and you feel yourself collapse before you fall unconcious.
                    -> wakeUp
                    # CLEAR
                **[Sprint forward]
                # IMAGE: MagicInDark.png
                You start sprinting down the rest of the path as quickly as you can manage. Suddenly, you turn a corner and see a small glowing orb hovering in front of you. The orb begins to fly towards you and as you are attempting to stop, it slams into you. 
                The air is knocked from your lungs and you stumble to the ground, wheezing. Your head smacks off the trunk of a tree and you begin to feel your conciousness fade. As you regard the orb through watery eyes, you can make out the outline of a small person within before you collapse into unconciousness.
                    ***[Continue]
                    # CLEAR
                    -> wakeUp
            
    = wakeUp
    You jerk awake and look around you. You are back at the intersection. You check your back for Gude, but she is no longer there. As you look around the area with fresh eyes. You realise that there is a low pathway snaking between the bottom of the undergrowth in front of you. 
        *[Crawl along the pathway]
        # IMAGE: OvergrownCave.png
            You follow the pathway, crawling on your belly. After some time, you come out on the other side of the bushes. As you get too your feet, you see a cave entrance in front of you which is covered in overgrown vines. 
                **[Approach the cave entrance]
                    You walk to the entrance of the cave. Upon closer inspection, you see that the vines have become so intertwined that the cave beyond is inaccessible in it's current state.
                        ***[Use Fire]
                        # CLEAR 
                        # IMAGE: Fire.png
                        You channel your connection to the element of fire and flames surge from your hands, burning away the vines.
                        ****[Enter the cave]
                        # CLEAR
                            You make your way into the cave, using your fire to light the way. You see a vairety of plants growing within the cave, but they are surrounded by swarms of wasps, so you leave them be. After a few minutes, you see an opening with sunlight shining through it.
                            *****[Walk through the opening]
                            -> spriteVillage
                        
                        = spriteVillage
                        # IMAGE: FairyVillage.png
                        You shield your eyes from the sunlight as you exit the cave opening. Once your eyes adjust, you look around and see that your are in a settlement of some kind. You see tens of small light orbs flitting around from place to place and gathering within tree hollows. 
                        *[Continue]
                        #clear
                        
                        One of the light orbs approaches you. As it comes closer, the light surrounding it begins to dim and you can make out that there is a small person within the orb. They have a pair of luminescent wings on their back. They stop in front of you and gesture with their hands for you to follow.
                        **[Follow them]
                            ->followSprite
                        **[Attack the Sprite]
                            ->attackSprite
                            
                            =followSprite
                                    You follow the sprite as they lead you through the village. Eventually, you come to a stone circle, where you see Gude placed upon a stone plinth in the centre. The sprites are tending to her, but you can see that she is still feverish. 
                                    You move to approach her, but the sprite stops you and gestures for you to continue following them.
                                            *[Continue]
                                            The sprite leads you to a large lake which is glowing with a faint blue light from below. The sprite points at the source of the light and gestures for you to enter the lake.
                                            **[Enter the Lake]
                                            # IMAGE: Water.png
                                                You walk into the lake and begin to swim down towards the source of the blue light. As you get closer, you can make out that the light is coming from a pool of blue liquid at the bottom of the pool.
                                                As you approach the liquid and reach out towards it, it surges towards your hand. Congratualtions, you have gained access to the element of Water!
                                                ***[Continue]
                                                # CLEAR
                                                # IMAGE: FairyVillage.png
                                                You swim back to the edge of the lake. As you walk back onto the shore of the lake, you and the sprite return to the stone circle. You stand in front of the plint where Gude lies, feverish.
                                                ****[Use Water]
                                                You reach out and access your link to Water to channel the cooling aspect of water into Gude. A blue water vapour covers Gude and her breathing settles. You check her temperature and find that her fever has cleared.
                                        -> findHerb2
                            
                            =attackSprite
                            You lunge forward to attack the sprite. It looks at you in shock before flying backwards and blasting you with magic. You keel over dead when it hits you.
                            That didn't go very well.
                            ->END
    = findHerb2
    # CLEAR
    # IMAGE: Bees.png
    After healing Gude, the sprites point the two of you in the direction of the second herb you need. You follow the directions of the sprites and return to the cave on the edge of the village. You hear a buzzing noise and you see that the thistle plant you need is still surrounded by wasps.
        -> combineElements
        
=== ToEarth

    = Enter
    You walk further into the forest and encounter the mouth of a cave leading up the mountain. You enter the cave. After some time, you notice the space is becoming tighter as you ascend. You see light shining through an exit ahead of you. 
        *[Proceed]
        # CLEAR
        # IMAGE: Cabin.png
            You step out of the cave into a frostbitten landscape. The tall pine trees around you are iced with snow and you see a small abandoned log cabin in front of you.
                **[Enter the cabin]
                # CLEAR
                    You step inside the old wooden cabin and find nothing of interest. You and Gude sit on an old chair for moment. Your moment of calm is interupted by the sounds of Gude's stomach rumbling.
                        ***[Search the cabin for food]
                            You pick up Gude and stand. You see a fireplace and a makeshift kitchen. 
                                -> search
                                
                                = search
                                +[Inspect fireplace]
                                    -> firePlace
                                    
                                +[Inspect kitchen]
                                    -> kitchen
    
    
    = firePlace
{

    - key == true:
        You inspect the fireplace and find a keyhole in the alcove. You insert the key and the alcove opens revealing a secret passage
            -> secretPassage
    
    - else:
        You inspect the alcove of the fireplace. There is a keyhole in the wall but nothing else.
        +[Keep searching]
            -> search

}    

    = kitchen
{
    
    - key == true:
        You search the kitchen and find nothing.
            *[Go back]
                -> search
    
    - else:
    You dig through the old presses and find single apple in a wicker bowl.
        *[Take the apple]
        ~ fruit = fruit + 1
            You pick up the apple. It is perfectly ripe except for a lone bruse on one side. You take a moment to feed the apple to Gude. Gude devours the fruit with haste. Her stomach continues to rumble...
                **[Leave cabin to continue searching]
                    -> cave
}

    = cave
    You step back outside into the snowy woods. You take glance at your surroundings and take notice of another cave entrance. You peek your head inside the cave and see pillars and a stone pathway inside leading to the entrance of a ruined house.
        *[Search the ruins]
        # CLEAR
        # IMAGE: Ruins.png
            You walk in and inspect the ruined house. You stand in open room with two doors to each side. You see stone tablets above each of these doors. The left reads "Storeroom" and the right reads "Guard House".
                -> theRuin
                
                = theRuin
                **[Inspect storeroom]
                    -> storeroom
                
                **[Inspect guard house]
                    -> guardHouse
                
    
    = storeroom
    You walk into the storeroom. There is nothing but empty shelves and mold. You return to the main room.
        -> theRuin
        
    = guardHouse
        You walk into the guard house. There are empty shelves and boarded up holes to the outside. You notice a shiny gold key hanging from a hook on the wall.
            *[Take key]
            ~ key = true
            # CLEAR
            # IMAGE: DeathRuins.png
                As your hands grasp the key the cold of the metal seems to penetrate your whole body. You feel something jagged grasp your leg. You turn and look down at horrific, skeletal amalgam with appendages resembling scythe blades. A boney hand reaches up moving towards Gude. 
                    **[Run]

                        You break free the abominations grasp and run back to the main room. The entrance is now blocked by felled trees. You see...
                            -> search

                        You break free the abominations grasp and run back to the main room. The entrance is now blocked by felled trees. Panicked you look around for a way out. As the creature pulls itself closer...
                        -> findEscape
                
                = findEscape
                **[Try Entrance]
                    -> entrancedeath
                
                **[Search Storeroom]
                    -> storeroom2
                    
    = entrancedeath
    You run towards the entrance. With all your strength you attempt to move the fallen trees in your path. 
    
    It's no use... 
    
    The amalgam takes Gude and delivers a slash across your body. Your vision begins to fade as you watch Gude get taken away. Everything goes black...
    -> END
    
    = storeroom2
    You run into the storeroom. At first glance you see nothing that can help you. 
    The abomination approaches and blocks the doorway. You look up and see a passage to the outside. 
    You pull yourself and Gude up into the passage and back out into the forest area. 
    You hear the creature travelling up the passage, pursuing the both of you. You must hide...
            *[Go to cabin]
                 You arrive back at the cabin. You hear the sounds of metal grinding against bone getting closer. Maybe something here can help?
                         -> search
    
    
    = secretPassage
    # CLEAR 
    # IMAGE: AppleSnow.png
    You run into the passageway and end up in a cave with hole in the ceiling. Light from the opening illuminates a single apples lying on a bed of snow. in the cave.
        *[Take the apple]
        # CLEAR
        ~ fruit = fruit + 1
            You pick up the fruit and feed it to Gude. She seems satisfied with the meal and falls asleep your arms. You stand with your daughter resting in your hands and let out a sigh of relief.
            
            The sound of grinding metal approaches behind you...
            
            "Its" found you both again. You must flee.
                **[Run]
                # CLEAR
                # IMAGE: GemCave.png
                    You run deeper and deeper into the cave. You notice the passageways begin to slope upwards. 
                    You see a glimmering purple light shining at the end of a passage. You cannot hear the monster anymore. 
                    Your safe for now. You approach the light and enter a cavern glimmering floor to ceiling with crystals and exposed geodes.
                    
                        A river divides the open cavern in two. On the other side of the river you see an opening on the ceiling of the cave and plants growing on the ground below.
                        ***[Inspect the stones]
                        # CLEAR
                        # IMAGE: Earth.png
                            You reach out and touch the brilliant magenta crystals lining the walls. 
                            The light they let off shines through your body and feels as if it illuminates your very soul. 
                            You away your hand. You feel tougher and more strong then you did before... you gained the element of Stone!
                                ****[Attempt to cross river]
                                # CLEAR
                                # IMAGE: BushInCave.png
                                Your elemental alchemy should be able to help you cross the river...
                                -> combineElements.getAcrossWater
    
    
=== toAir
    = Enter
    [LEAVE CAVE]
        *[CLIMB MOUTAIN]
            [ARRIVE ON MOUNTAIN SIDE]
                **[This is going to be a terrible night...]
                    [DEATH REAPPEARS (CHASE SCENE)]
                        ***[ESCAPE OVER RAVINE]
                            [ABOUT TO GO OVER RAVINE]
                                ****[Use Elements]
                            -> combineElements.ravine
                            
                        ***[FLEE THROUGH ROCKS]
                            [ABOUT TO FLEE THROUGH ROCKS]
                                ****[Use Elements]
                            -> combineElements.throughRocks
    
    = avoidDeath1
    [AFTER JUMPING OVER RAVINE YOU KEEP RUNNING]
    *[Proceed]
        -> upMountain
        
    = avoidDeath2
    [YOU WAIT UNTIL DEATH FLIES OVER]
    *[Proceed]
        ->upMountain
    
    = upMountain
    [GOING UP MOUNTAIN, SEE TREE]
        *[Investigate]
            [FIND WIND CHIME, GAIN AIR]
                **[Pick up wind chime]
                    [PROCEED ON TO FIND HERB]
                    [LAND SLIDE BLOCKS DA WAY]
                        ***[Use Elements]
                            -> combineElements.landSlide

    = getHerb
    [GETTING THE HERB]
        *[KEEP GOING]
            [CONTINUE UP MOUNTAIN AS DEATH IS IN PURSUIT]
                **[TRANSITION INTO FINAL LEVEL]
                    -> thePeak.Enter

=== thePeak

    = Enter
{

    - finalDoor == 3:
        [THE FINAL DOOR OPENS]
        *[Open the final door]
            ~ finalDoor = finalDoor - 3
            -> finalDoorOpens
    
    - else:
    [REACH THE PEAK OF THE MOUNTAIN, FIND ANCIENT RUIN]
        *[ENTER ANCIENT RUIN]
            [COME ACROSS 3 DOORS]
            
                **[ICE DOOR]
                    ~ finalDoor = finalDoor + 1
                    -> iceDoor
               
                **[LIGHTNING DOOR]
                    ~ finalDoor = finalDoor + 1
                    -> lightningDoor
                
                **[METAIL DOOR]
                    ~ finalDoor = finalDoor + 1
                    -> metalDoor
}

    = iceDoor
    [A TASK PRESENTS ITSELF, CREATE ICE]
        *[Use Elements]
            -> combineElements.iceDoor    
    
    = lightningDoor
    [A TASK PRESENTS ITSELF, CREATE LIGHTNING]
        *[Use Elements]
            -> combineElements.lightningDoorPT1    
    
    = metalDoor
    [A TASK PRESENTS ITSELF, CREATE METAL]
        *[Use Elements]
            -> combineElements.metalDoorPT1

    = finalDoorOpens    
     [GET THE FINAL HERB]
        *[COMBINE ALL OF THE HERBS]
            
    
-> END

=== combineElements

    = burnTrees
{
    - fire == 1:
    # CLEAR
    # IMAGE: BlockBurned.png
       The element of fire dances from your hand and jumps towards the trees burning away at them and clearing a path.
        ~ fire = fire - 1
        -> Tutorial.exit

        - else:
                +[Fire]
                You proceed down the straight path and approach the trees blocking your way.
                    ~ fire = fire + 1
                    -> burnTrees
                
}

    = theWasps
{

    - fire == 1 && water == 1 && combine == 2:
        +[Combine Elements]
        # CLEAR
        # IMAGE: Thistle.png
            You create steam to knock out the pesky wasps. You gather some thistle, place it in your bag and continue onwards.
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                -> ToEarth.Enter
    
   - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> theWasps
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough to fill up 
            the space that you're in and so you drown.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> theWasps

    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> theWasps
    
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> theWasps
}

    = getAcrossWater
{

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
        # CLEAR
        # IMAGE: MistleToe.png
            You create magma over the water. A bridge of stone forms leading you to the plants on the other side. You inspect one bush and find mistletoe. This shall do as an ingredient for your medicine. You take a spring and place it in your bag.
            ~ fire = fire - 1
            ~ earth = earth - 1
            ~ combine = combine - 2
                ++ [Look around]
                # CLEAR
                    Ther seems to be no way out other then up. Your elements should be able to help you...
                        +++[Use Elements]
                -> escapeCave
    
    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and can no 
            longer see where you're going, you fall into the water
            and drown.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> getAcrossWater

    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> getAcrossWater
        
    
    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> getAcrossWater
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough to fill up 
            the space that you're in and so you drown.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> getAcrossWater

    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> getAcrossWater
                    
                    
    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> getAcrossWater
    
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> getAcrossWater
    
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> getAcrossWater
}

    = escapeCave
{
    
    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and can no 
            longer see where you're going, you walk around for a while,
            trip over a rock and smash your head into the side of the cave
            and bleed out.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> escapeCave
    
    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you've created lava and burned yourself severely.
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> escapeCave
        
    
    - water == 1 && earth == 1 && combine == 2:
        You create mud and use it to make steps for you to
        climb up towards the exit to the cave.
            -> toAir.Enter

        - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> escapeCave
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough to fill up 
            the space that you're in and so you drown.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> escapeCave

    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> escapeCave

    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> escapeCave
    
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add Vapour...
    -> escapeCave
    
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add Stone...
    -> escapeCave
}
    = ravine
{

    - fire == 1 && water == 1 && combine == 2:
        +[Combine Elements]
            You create enough pressurised steam to allow you to
            fly over the ravine.
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                -> toAir.avoidDeath1
    
    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you've created lava and burned yourself severely.
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> ravine
    
    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> ravine

    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> ravine
   
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough to fill up 
            the space that you're in and so you drown.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> ravine
    
    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> ravine

    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> ravine
    
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> ravine
    
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> ravine
}

 = throughRocks
{
    
    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and can no 
            longer see where you're going, you walk around for a while,
            trip over a rock and smash your head off of the other rocks lying around.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> throughRocks
 
    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you've created lava and burned yourself severely.
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> throughRocks
 
    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            You become one with the earth and blend into the ground amongst the rocks.
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> toAir.avoidDeath2

    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> throughRocks
   
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough to fill up 
            the space that you're in and so you drown.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> throughRocks
    
    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> throughRocks
    
    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> throughRocks
    
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> throughRocks
    
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> throughRocks
}

= landSlide
{
    
    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam, I guess if you can't see the problem,
            then is it really there?
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> landSlide

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Do you ever get tired of constantly burning yourself to death?
            Or maybe you enjoy it? Either way I won't judge.
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> landSlide
    
    - fire == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            You concentrate the fire along with air to create a fireball which
            you launch at the pile of rocks.
                # CLEAR
                    ~ fire = fire - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                -> toAir.getHerb    
    
    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty... AGAIN
            Where do you keep getting these new pairs of clothes, it's getting ridiculous.
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> landSlide
    
    - water == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations dark storm clouds have appeared above you as torrential
            rain pours down on you, you're now drenched.
                + + [Try Again?]
                # CLEAR
                  ~ water = water - 1
                  ~ air = air - 1
                  ~ combine = combine - 2
                -> landSlide
    
    - earth == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created a sandstorm and it's getting in your eyes
            you have successfully blinded yourself and can no longer continue.
                + + [Try Again?]
                # CLEAR
                    ~ earth = earth - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                    -> landSlide
    
    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair. Downgraded from magma to just regular fire I see, too 
            bad it was the same result.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> landSlide
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough
            to cause a tsunami in fact. I don't know how you've managed
            to create a tsunami on top of a mountain but I guess nothings
            impossible right?
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> landSlide
    
    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive. That's a personal fear of mine, sucks to be you i guess.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> landSlide
    
    - air == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have drastically increased the amount of oxygen around you,
            every single bug within your area starts to grow to 50 times their size.
            Gigantic ladybugs, cicadas and ants rise up to expel you from life.
                ++[Try Again?]
                # CLEAR
                    ~ air = air - 2
                    ~ combine = combine - 2
                    -> landSlide
    
    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> landSlide
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> landSlide
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> landSlide
    + [Air]
    ~ air = air + 1
    ~ combine = combine + 1
    Add wind...
    -> landSlide
}


= iceDoor
{

    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and... well nothing happens
            the steam just kinda lingers around.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> iceDoor

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created magma and not only have you
            melted away all the ice in the room, you've also melted yourself away.
            
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> iceDoor

    - fire == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations fireballs and self combustions for everyone!
            + +[Try Again?]
                # CLEAR
                    ~ fire = fire - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                -> iceDoor

    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty... AGAIN
            Where do you keep getting these new pairs of clothes, it's getting ridiculous.
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> iceDoor

    - water == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            You have created the perfect amount of ice.
                # CLEAR
                  ~ water = water - 1
                  ~ air = air - 1
                  ~ combine = combine - 2
                    ++ [Go Back]
                -> thePeak.Enter

    - earth == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created a sandstorm and it's getting in your eyes
            you have successfully blinded yourself and can no longer continue.
                + + [Try Again?]
                # CLEAR
                    ~ earth = earth - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                    -> iceDoor

    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair. Downgraded from magma to just regular fire I see, too 
            bad it was the same result.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> iceDoor
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water, enough
            to cause a tsunami in fact but due to how cold the room is 
            the giant waves freeze up. So close and yet so far.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> iceDoor

    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive. That's a personal fear of mine, sucks to be you i guess.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> iceDoor

    - air == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have drastically increased the amount of oxygen around you...
            nothing happens.
                ++[Try Again?]
                # CLEAR
                    ~ air = air - 2
                    ~ combine = combine - 2
                    -> iceDoor
    
    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> iceDoor
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> iceDoor
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> iceDoor
    + [Air]
    ~ air = air + 1
    ~ combine = combine + 1
    Add wind...
    -> iceDoor
}

= lightningDoorPT1
{

    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and... well nothing happens
            the steam just kinda lingers around.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> lightningDoorPT1

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created magma and not only have you
            melted away all the ice in the room, you've also melted yourself away.
            
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> lightningDoorPT1

    - fire == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations fireballs and self combustions for everyone!
            + +[Try Again?]
                # CLEAR
                    ~ fire = fire - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                -> lightningDoorPT1

    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty... AGAIN
            Where do you keep getting these new pairs of clothes, it's getting ridiculous.
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> lightningDoorPT1
    
    - water == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            You've completeled part 1 of the trial
                ++[Combine Elements again]
                ~ water = water - 1
                ~ air = air - 1
                ~ combine = combine - 2
                    -> lightningDoorPT2
                    
    
    - earth == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created a sandstorm and it's getting in your eyes
            you have successfully blinded yourself and can no longer continue.
                + + [Try Again?]
                # CLEAR
                    ~ earth = earth - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                    -> lightningDoorPT1

    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair. Downgraded from magma to just regular fire I see, too 
            bad it was the same result.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT1
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water, but
            due to the high amounts of electricty in the room you end up
            shocking yourself to death.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT1

    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive. That's a personal fear of mine, sucks to be you i guess.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT1

    - air == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have drastically increased the amount of oxygen around you...
            nothing happens.
                ++[Try Again?]
                # CLEAR
                    ~ air = air - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT1   
    
    
   - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> lightningDoorPT1
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> lightningDoorPT1
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> lightningDoorPT1
    + [Air]
    ~ air = air + 1
    ~ combine = combine + 1
    Add wind...
    -> lightningDoorPT1 
}

= lightningDoorPT2
{
    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and... well nothing happens
            the steam just kinda lingers around.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> lightningDoorPT2

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created magma and not only have you
            melted away all the ice in the room, you've also melted yourself away.
            
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> lightningDoorPT2

    - fire == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            You have passed the second half of the trial
                ++[Go Back]
                # CLEAR
                    ~ fire = fire - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                -> thePeak.Enter

    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty... AGAIN
            Where do you keep getting these new pairs of clothes, it's getting ridiculous.
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> lightningDoorPT2
    
    - water == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            It may have worked the first time buddy but you're going to need to
            try something else.
                ++[Try Again?]
                ~ water = water - 1
                ~ air = air - 1
                ~ combine = combine - 2
                    -> lightningDoorPT2
                    
    
    - earth == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created a sandstorm and it's getting in your eyes
            you have successfully blinded yourself and can no longer continue.
                + + [Try Again?]
                # CLEAR
                    ~ earth = earth - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                    -> lightningDoorPT2

    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair. Downgraded from magma to just regular fire I see, too 
            bad it was the same result.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT2
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water, but
            due to the high amounts of electricty in the room you end up
            shocking yourself to death.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT2

    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive. That's a personal fear of mine, sucks to be you i guess.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT2

    - air == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have drastically increased the amount of oxygen around you...
            nothing happens.
                ++[Try Again?]
                # CLEAR
                    ~ air = air - 2
                    ~ combine = combine - 2
                    -> lightningDoorPT2   
    
    
   - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> lightningDoorPT2
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> lightningDoorPT2
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> lightningDoorPT2
    + [Air]
    ~ air = air + 1
    ~ combine = combine + 1
    Add wind...
    -> lightningDoorPT2
}

= metalDoorPT1
{

    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and... well nothing happens
            the steam just kinda lingers around.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> metalDoorPT1

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            You've comepleted the first part of this trial.
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> metalDoorPT2

    - fire == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations fireballs and self combustions for everyone!
            + +[Try Again?]
                # CLEAR
                    ~ fire = fire - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                -> metalDoorPT1

   - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty... AGAIN
            Where do you keep getting these new pairs of clothes, it's getting ridiculous.
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> metalDoorPT1
    
    - water == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations dark storm clouds have appeared above you as torrential
            rain pours down on you, you're now drenched. Yes we will gloss over the 
            fact that you're indoors.
                + + [Try Again?]
                # CLEAR
                  ~ water = water - 1
                  ~ air = air - 1
                  ~ combine = combine - 2
                -> metalDoorPT1
    
    - earth == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created a sandstorm and it's getting in your eyes
            you have successfully blinded yourself and can no longer continue.
                + + [Try Again?]
                # CLEAR
                    ~ earth = earth - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                    -> metalDoorPT1
    
    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair. Downgraded from magma to just regular fire I see, too 
            bad it was the same result.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> metalDoorPT1
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough
            to cause a tsunami in fact.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> metalDoorPT1
    
    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive. That's a personal fear of mine, sucks to be you i guess.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> metalDoorPT1
    
    - air == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have drastically increased the amount of oxygen around you...
            nothing happens.
                ++[Try Again?]
                # CLEAR
                    ~ air = air - 2
                    ~ combine = combine - 2
                    -> metalDoorPT1 

    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> metalDoorPT1
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> metalDoorPT1
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> metalDoorPT1
    + [Air]
    ~ air = air + 1
    ~ combine = combine + 1
    Add wind...
    -> metalDoorPT1
}

= metalDoorPT2
{
    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created steam and... well nothing happens
            the steam just kinda lingers around.
                ++[Try Again?]
                # CLEAR
                ~ fire = fire - 1
                ~ water = water - 1
                ~ combine = combine - 2
                    -> metalDoorPT2

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            It may have worked the first time buddy but you're going to need to
            try something else.
                ++[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> metalDoorPT2

    - fire == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations fireballs and self combustions for everyone!
            + +[Try Again?]
                # CLEAR
                    ~ fire = fire - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                -> metalDoorPT2

   - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty... AGAIN
            Where do you keep getting these new pairs of clothes, it's getting ridiculous.
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> metalDoorPT2
    
    - water == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            You have completed the second half of the trial
                + + [Go Back]
                # CLEAR
                  ~ water = water - 1
                  ~ air = air - 1
                  ~ combine = combine - 2
                -> thePeak.Enter
    
    - earth == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created a sandstorm and it's getting in your eyes
            you have successfully blinded yourself and can no longer continue.
                + + [Try Again?]
                # CLEAR
                    ~ earth = earth - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                    -> metalDoorPT2
    
    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair. Downgraded from magma to just regular fire I see, too 
            bad it was the same result.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> metalDoorPT2
    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough
            to cause a tsunami in fact.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> metalDoorPT2
    
    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive. That's a personal fear of mine, sucks to be you i guess.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> metalDoorPT2
    
    - air == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have drastically increased the amount of oxygen around you...
            nothing happens.
                ++[Try Again?]
                # CLEAR
                    ~ air = air - 2
                    ~ combine = combine - 2
                    -> metalDoorPT2 

    - else:
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    Add cinders...
    -> metalDoorPT2
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    Add vapour...
    -> metalDoorPT2
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    Add stone...
    -> metalDoorPT2
    + [Air]
    ~ air = air + 1
    ~ combine = combine + 1
    Add wind...
    -> metalDoorPT2    
}
