VAR secret = 0
-> Tutorial.TheCampfire

=== Tutorial

    = TheCampfire
    
        You approach the mouth of the forest.
        You give a drink of water to Gude, your daughter, from your waterskin.
        You can feel your daughter shivering in her blanket against your chest.
        There is old fire pit in a clearing ahead of you.
        You must find a way to light a fire.
        -> UnlitCampfire
        
        = UnlitCampfire
        {
        
        - secret == 3:
                Alright I seem to have everything I need.
                -> LightingTheFire
            
        - else:
            You see dark paths to your left and right.
            There is a path ahead of you but it is blocked.
            * [Go left]
            ~ secret = secret + 1
            -> left
            
            * [Go right]
            ~ secret = secret + 1
            -> right
            
            * [Go Straight]
            ~ secret = secret + 1
            -> straight
            
            
                
        
        }
        

        = LightingTheFire
            * [Light the fire]
                You use the flint and steel horseshoe to light the campfire.
                You set down Gude next to the warmth of the fire.
                She falls fast asleep.
                You hold out your hands to warm yourself.
                Suddenly, sparks spring from the flames and fly to your palms!
                You watch as the magical wisps of ember dance at your finger tips.
                A warm mystical energy heats your very soul...
                -> END
            
        
        
    
    = right
    Piles of shale and stone are scattered on the barren ground.
    The earth is tough and hard.
     * [Inspect the rocks]
       - You find a shard of flint amoung the rocks!

    * [Go to campfire]
    -> UnlitCampfire
    
    
    = left
    A large oak tree towers before you.
    You see a ruined cart wedged in trees further on.
    There is a shovel planted in a mound of dirt beneath the oak.
        * [Pick up shovel]
        You pick up the shovel. 
        It is rusted and old, its handle slightly broken.
        
        * *[Inspect ruined cart]
        -    You search the surroundings of the destroyed horse carriage.
        You find the half buried skeleton of a horse.
        You use the shovel to unearth the rest of the beasts remains.
        You acquired a steel horseshoe!
                
    
    * [Go to campfire]
    -> UnlitCampfire
    
    = straight
    There are fallen trees in your path. 
    It is impossible to pass.
        * [Turn back]
        -> UnlitCampfire
        * [Explore]
        -> Explore
        

        = Explore
        You inspect the fallen trees.
        There are slashes in their trunks.
        They seem to have been felled by a large metal cutting tool.
        * [Go back to campfire]
        -> UnlitCampfire

    


-> END