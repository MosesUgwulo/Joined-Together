VAR numberOfBodies = 0
-> BookOne.TheSetup //Chapter 1 or stage 1

=== BookOne //Parent stitch

= TheSetup

{
- numberOfBodies:
    This is where the {numberOfBodies} {numberOfBodies > 1: bodies were | body was} found! //Used to do math related stuff and if else stuff

- else: 
    Peter: The bodies.. they're gone!
    Everyone gasped! One man fell dead!
    ~ numberOfBodies = numberOfBodies + 1
    
}

-> TheReveal



= TheReveal //Sub-Stitch small conversation within the actual story

Brendan: Really?
//Branching/decisions
* I doubted him.          
    Peter: How dare you doubt me 
    Brendan: By my wits, I'll show you.
    //Nested branching
    * * I showed him the bloody hankerchief 
        Peter: How horrifying!
        A gasp was heard in the room.
        -> ButWhereDidItHappen
        
        
    * * I showed him the muddy bootprint
        Peter: How mystifying!
        
    -- Brendan: I thought you might say so. //Gathering/Rejoining
    
* I agreed that the culprint was known to all.
    Peter: Don't steal my thunder
    
    - Brendan: Let's just focus on the evidence shall we?
-> ButWhereDidItHappen

= ButWhereDidItHappen
Peter: So tell me this, Ms. Author- where did the crime take place?
-> BookTwo.TheReveal



=== BookTwo //Different chapter in the same story

-> TheReveal

= TheReveal
Peter: The butler did it this time
-> DONE