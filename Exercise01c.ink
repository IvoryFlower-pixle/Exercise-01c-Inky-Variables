/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/

VAR health = 5
VAR pet_name = ""
VAR torches = 0


-> memory

 == memory ==
Before you stood the mouth of cave, one of which you have heard many tales about. One which they call the Phantom cave. Standing before the cave, you can't help but feel a little uneasy. You wished your pet was here to make things a little better. What was your pet's name?

*[Dash]
 ~ pet_name = "Dash"
  -> cave_mouth
*[Minny]
 ~ pet_name = "Minny"
  -> cave_mouth
*[Sam]
 ~ pet_name = "Sam"
  -> cave_mouth
  
  

== cave_mouth ==
You enter the cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west. You wished you could turn back but {pet_name} is counting on you.



+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END