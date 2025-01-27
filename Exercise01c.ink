/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 + Variable types: integer, float, boolean
 + Variable assignment
 + Printing variables
 + Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/


VAR pet_name = ""
VAR torches = 0
VAR key = 0


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
-> END  
  

== cave_mouth ==
You enter the cave. There is a torch on the floor. You wished you could turn back but {pet_name} is counting on you. {torch_pickup: |It's too dark to see any further. Perhaps you should get a light.} 
You have {torches} torches
* [Pick up the torch] -> torch_pickup
* {torches > 0} [Light Torch] -> Lit_cave_mouth
-> END



+ [Go Back] -> cave_mouth
-> END

== Lit_cave_mouth ==
With the cave now lit, you can see two tunnels. A tunnel leading to the east and a tunnel leading to the west. Which way do you go?
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
-> END

== east_tunnel ==
You walk down the east tunnel and come to a small room. In the middle of the room is a chest.
+ [Check Chest] -> Chest_1
+ [Go back] -> Lit_cave_mouth
-> END
== west_tunnel ==
{Crack_in_wall: There is nothing left for you here.| You walk down the west tunnel and come to an open room. Theres only a bunch of rocks and cracks but you see something glitter in one of the cracks.} 
{ pet_name == "Dash": If Dash were here, he would be trying to explore every little thing.|}
{ pet_name == "Minny": If Minny were here, she would be trying to hide behind my legs. The little scaredy cat.|}
{ pet_name == "Sam": If Sam were here, they would be eager for the new adventure.|}
* [Examine Crack] -> Crack_in_wall
+ [Go Back] -> Lit_cave_mouth
-> END

== Crack_in_wall ==
~ key = key + 1
Looking at the crack, you find that there is a key. After a bit of trial and error, you are able to get the key out
+ [Go back] -> west_tunnel
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== Chest_1 ==
Looking at the chest, you find it locked. What do you do?
You have {key} key.
*{key > 0}[Unlock Chest] -> Ending
+ [Go back] -> east_tunnel
-> END

== Ending ==
Opening the chest, you find a bug pile of gold and jewels. With this you can pay for your {pet_name} medical bills and live out the rest of your life in peace.
-> END







