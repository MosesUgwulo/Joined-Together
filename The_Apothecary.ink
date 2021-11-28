VAR flint = 0
VAR steel = 0
-> Tutorial.TheCampfire

=== Tutorial

    = TheCampfire
        The campfire has been made but there is
        no way to light it up.
        
        APOTHECARY: I need to find a way to start
        the campfire.
        -> StartingTheFire
        
        = StartingTheFire
            * [Go left]
            -> left
            
            * [Go right]
            -> right
            
            * [Try to start the fire]
            -> FailFireStart
        
        
    
    = right
    oh here it is
     * [Go to campfire]
     -> StartingTheFire2
    
    
    = left
    Oh, theres some flint
            * * [Pick up flint]
                ~ flint = flint + 1
            -- Maybe there's some steel around here
            * * [Go to campfire]
            -> StartingTheFire2
            
            

    = StartingTheFire2
        * [Go left]
        -> left
        
= FailFireStart
{
    - flint:
        I seem to be missing some {flint == 1: steel }
        -> StartingTheFire
    
    - else:
        I seem to be missing flint and steel
        -> StartingTheFire
}





-> END