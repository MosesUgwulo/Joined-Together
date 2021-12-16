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
-> Tutorial.TheCampfire
    
=== Tutorial

    = TheCampfire
        # IMAGE: Test.png
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
            ~ secret = secret + 1
            ~ steel = true
            -> left
            
            * [Go right]
            # CLEAR
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
    You proceed down the now clear pathway and you come to the entrance of the the forest proper.
        # CLEAR
        *[Enter the forest]
        -> toWater.theForest

    = findHerb
    As you walk down the path into the forest a peculiar but familiar bush with red berries catches your eye.
        *[Inspect the bush]
            On closer inspection you recognise that this is a ginseng plant. Its roots are know to help heal the body and are believed to have magical restorative propertys.
                * *[Harvest some ginseng root]
                    You acquired some ginseng root. You placed it into your bag.
                    # CLEAR
                    * * *[Enter the forest]
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
            You venture further into the dark woods. You stop at an intersection of two paths. To your left you see a faint light break through the canopy. The path on the right leads between densely packed trees which submerge the area deeper inside in darkness.
                **[Go Left]
                -> pathLeft
                
                **[Go Right]
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
                    You continue to approach the stump. The smell drags you onward     until finally you stand in front of the stump. Your hand, as if          possessing a mind of it's own, reaches out to grab the stump. As your     hand touches the stump, the smell grows overpowering and your            consciouness grows hazy. You fall to the ground, unconscious.
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
                    As you turn back towards the crossroads, the rustling grows louder. Suddenly, a ball of pink glowing energy flies out from between the trees and hits your chest. You reel back from the blast and you feel yourself collapse before you fall unconcious.
                    -> wakeUp
                **[Sprint forward]
                You start sprinting down the rest of the path as quickly as you can manage. Suddenly, you turn a corner and see a small glowing orb hovering in front of you. The orb begins to fly towards you and as you are attempting to stop, it slams into you. 
                The air is knocked from your lungs and you stumble to the ground, wheezing. Your head smacks off the trunk of a tree and you begin to feel your conciousness fade. As you regard the orb through watery eyes, you can make out the outline of a small person within before you collapse into unconciousness.
                    ***[Continue]
                    -> wakeUp
            
    = wakeUp
    You jerk awake and look around you. You are back at the intersection. You check your back for Gude, but she is no longer there. As you look around the area with fresh eyes. You realise that there is a low pathway snaking between the bottom of the undergrowth in front of you. 
        *[Crawl along the pathway]
            You follow the pathway, crawling on your belly. After some time, you come out on the other side of the bushes. As you get too your feet, you see a cave entrance in front of you which is covered in overgrown vines. 
                **[Approach the cave entrance]
                    [CATCH UP TO SPRITES]
                    [FIND VILLAGE OF SPRITES, THEY TAKE CARE OF DAUGHTER]
                        -> spriteVillage
                        
                        = spriteVillage
                    [THEY TELL YOU WHERE TO FIND WATER]
                        *[LEAVE TO GO GET WATER]
                                [GET WATER ELEMENT]
                                    **[RETURN BACK TO SPRITE VILLAGE]
                                        [SEE DAUGHTER STABLIZED]
                                            ***[THANK SPRITES AND LEAVE TO FIND HERB]
                                                    -> findHerb2
                                                    
    = findHerb2
    [SOME DIALOGUE ABOUT USING FIRE AND WATER TO FIND HERB - TBD]
        -> ToEarth.Enter
        
=== ToEarth

    = Enter
    You walk further into the forest and encounter the mouth of a cave leading up the mountain. You enter the cave a notice as the space becomes tighter as you ascend. You see light shining through an exit ahead of you. 
        *[Proceed]
            You step out of the cave into a frostbitten landscape. The tall pine trees around you are iced with snow and you see a small abandoned log cabin infront of you.
                **[Enter the cabin]
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
        [FIND SECRET PASSAGE]
            -> secretPassage
    
    - else:
        [FIND ALCOVE]
        +[COME BACK LATER]
            -> search

}    

    = kitchen
{
    
    - key == true:
        [YOU SEARCH THE KITCHEN AND FIND NOTHING]
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
                As your hands grasp the key the cold of the metal seems to penetrate your whole body. You feel something jagged grasp your leg. You turn and look down at horrific, skeletal amalgam with appendages resembling scythe blades. A boney hand reaches up moving towards Gude. 
                    **[Run]
                        You break free the abominations grasp and run back to the main room. The entrance is now blocked by felled trees. You see...
                            -> search
    
    
    = secretPassage
    [ENTER SECRET PASSAGE]
        *[FIND SECOND FRUIT]
        ~ fruit = fruit + 1
            [FLEE DEATH AGAIN]
                **[KEEP FLEEING]
                    [FIND EARTH]
                        ***[PROCEED]
                            [YOU SEE THE HERB ACROSS ALOT OF WATER]
                                ****[USE ELEMENTS]
                                    -> combineElements.getAcrossWater
    
    
=== toAir
    = Enter
-> END


=== combineElements

    = burnTrees
{
    - fire == 1:
       The element of fire dances from your hand and jumps towards the trees
       burning away at them and clearing a path.
        ~ fire = fire - 1
        -> Tutorial.exit

        - else:
                +[Fire]
                You approach some nearby trees
                    ~ fire = fire + 1
                    -> burnTrees
                
}

    = getAcrossWater
{

    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            YOU CREATE MAGMA OVER THE WATER TO COOL IT DOWN AND TURN IT
            TO ROCK SO YOU CAN WALK OVER IT TO GET THE HERB.
            ~ fire = fire - 1
            ~ earth = earth - 1
            ~ combine = combine - 2
                ++ [ESCAPE THE CAVE]
                    WHILE YOU'RE ESCAPING YOU SEE A LIGHT COMING FROM HIGH UP
                    YOU THINK OF A WAY TO REACH THE EXIT OF THE CAVE.
                        +++[USE ELEMENTS]
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
    -> getAcrossWater
    
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    -> getAcrossWater
    
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
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
    -> escapeCave
    
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    -> escapeCave
    
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    -> escapeCave
}

/*    = toBeUsed
{
    - fire == 1 && water == 1 && combine == 2:
        + [Combine Elements]
        # CLEAR
            You have made steam and disappered from view.
            You have come to the end of the tutorial.
            ~ fire = fire - 1
            ~ water = water - 1
            ~ combine = combine - 2
        -> return1
    
    - fire == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you've created lava and burned yourself severely.
            + +[Try Again?]
            # CLEAR
                ~ fire = fire - 1
                ~ earth = earth - 1
                ~ combine = combine - 2
                -> forestFire
    
    - fire == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have spontaneously combusted.
                + + [Try Again?]
                # CLEAR
                    ~ fire = fire - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                -> forestFire
    
    - water == 1 && earth == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created mud and gotten your clothes dirty
                + + [Try Again?]
                # CLEAR
                    ~ water = water - 1
                    ~ earth = earth - 1
                    ~ combine = combine - 2
                -> forestFire
                
    - water == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations dark storm clouds have appeared above you as torrential
            rain pours down on you, you're now drenched.
                + + [Try Again?]
                # CLEAR
                  ~ water = water - 1
                  ~ air = air - 1
                  ~ combine = combine - 2
                -> forestFire
                
    - earth == 1 && air == 1 && combine == 2:
        + [Combine Elements]
            Congratulations you have created a sandstorm and it's getting in your eyes
            you have successfully blinded yourself and can no longer continue.
                + + [Try Again?]
                # CLEAR
                    ~ earth = earth - 1
                    ~ air = air - 1
                    ~ combine = combine - 2
                    -> forestFire
                    
    - fire == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created more fire and have scorched yourself
            beyond repair.
                ++[Try Again?]
                # CLEAR
                    ~ fire = fire - 2
                    ~ combine = combine - 2
                    -> forestFire
                    
    - water == 2 && combine == 2:
        + [Combine Elements]
            Congratulations you have created even more water enough
            to cause a tsunami in fact.
                ++[Try Again?]
                # CLEAR
                    ~ water = water - 2
                    ~ combine = combine - 2
                    -> forestFire
                    
    - earth == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have created enough earth to bury
            yourself alive.
                ++[Try Again?]
                # CLEAR
                    ~ earth = earth - 2
                    ~ combine = combine - 2
                    -> forestFire
                    
    - air == 2 && combine == 2:
        +[Combine Elements]
            Congratulations you have drastically increased the amount of oxygen around you,
            every single bug within your area starts to grow to 50 times their size and 
            attacks you.
                ++[Try Again?]
                # CLEAR
                    ~ air = air - 2
                    ~ combine = combine - 2
                    -> forestFire
    - else:
        This is WIP and is only here for the playtesting
        Which elements would you like to combine
    
    + [Fire]
    ~ fire = fire + 1
    ~ combine = combine + 1
    -> forestFire
    + [Water]
    ~ water = water + 1
    ~ combine = combine + 1
    -> forestFire
    + [Earth]
    ~ earth = earth + 1
    ~ combine = combine + 1
    -> forestFire
    + [Air]
    ~ air = air + 1
    ~ combine = combine + 1
    -> forestFire
}*/

