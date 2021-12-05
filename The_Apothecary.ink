/*VAR goneRight = 0
VAR goneLeft = 0
VAR goneStraight = 0*/
VAR secret = 0
-> Tutorial.TheCampfire

=== Tutorial

    = TheCampfire
    
        [DIALOGUE - YOU HAVE WATER HERE FOR PLAYTEST]
        -> UnlitCampfire
        
        = UnlitCampfire
        {
        
        - secret == 3:
                Alright I seem to have everything I need
                -> LightingTheFire
            
        - else:
            [DIALOGUE]
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
        
        
        
        
       /* = UnlitCampfire
            * [Go left]
            ~ goneLeft = goneLeft + 1
            -> left
            
            * [Go right]
            ~ goneRight = goneRight + 1
            -> right
            
            * [Go Straight]
            ~ goneStraight = goneStraight + 1
            -> straight*/
            
        = LightingTheFire
            * [Light the fire]
                [DIALOGUE]
                -> END
            
        
        
    
    = right
    [DIALOGUE]
     * [Look around for rocks]
        [MORE DIALOGUE]
        
            * * [Option 1]
                [EVEN MORE DIALOGUE]
                
                * * * [Another option]
                -       [SO MUCH MORE FUCKING DIALOGUE]
                
    * [Go to campfire]
    -> UnlitCampfire
    
    
    = left
    [DIALOGUE]
        * [Pick up shovel]
        [MORE DIALOGUE]
        
        * *[Dig and find horseshoe]
        -    [EVEN MORE DIALOGUE]
                
    
    * [Go to campfire]
    -> UnlitCampfire
    
    = straight
    [DIALOGUE - DEAD END OPTION]
        * [Turn back]
        -> UnlitCampfire
        * [Explore]
        -> Explore
        

        = Explore
        [DIALOGUE]
        * [Go back to campfire]
        -> UnlitCampfire

    


-> END