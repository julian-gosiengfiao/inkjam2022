=TransitionToMineArea

{not item_sunglasses:
~item_sunglasses++
} //In case we skip our way here

On the other side of the bridge, the terrain is hilly and uneven.

You walk for a while, and eventually the mountains in the distance get closer and closer.

At the base of a mountain, you see a pillar of light shoot into the sky.

This can't be good.

+ [Make your way to the pillar] You make your way to the pillar of light.

Before long, you arrive at your destination.

+ + It is the mine-pass, the only safe way through these mountains.

...
->OutsideMine


VAR item_laundry_room_key = 0
VAR barrel_reset = 0
VAR building_is_laundry = 0
VAR entered_laundry_with_shades = 0

=OutsideMine

You are outside the entrance to a mine.

There is a {not building_is_laundry: single building out} {building_is_laundry: laundry building} here, with intense light pouring out of every opening.

{not barrel_reset: You notice a wiggling barrel next to the building.}
{barrel_reset && not item_laundry_room_key: There is a man in a barrel, eyeing you from beneath the lid.}
{kicked_for_key: There is a barrel with a man inside here.}
{got_key_nicely: Barrel-man is chilling in his barrel here.}


+ {not item_laundry_room_key} [Enter the building] You try to enter the {building_is_laundry: laundry} building.
    It's locked, and you don't have a key.
    + + {not building_is_laundry} You note it says: "LAUNDRY STATION" in big letters on the door.
    ~building_is_laundry++
    ...
    ->OutsideMine
    + + Darn.
    ...
    ->OutsideMine

+ {item_laundry_room_key} [Enter the building] You try to enter the {building_is_laundry: laundry} building.
    {item_laundry_room_key: The laundry room key unlocks the door.}
    The radiant light floods out of the door and blinds you!
    + + [Get me outta here!] You quickly shut the door and it locks with a click.
    ...
    ->OutsideMine
    + + [Check inventory] In a single, effortless motion, you slide your hand into your inventory, pull your sunglasses out, and sit them on your glorious face.
    + + + [Enter the laundry building] You enter the incandescent laundry building.
    ...
    ->LaundryBuilding

+ {not BarrelKicked} [Inspect the barrel]
#CLEAR
-> BarrelImage


+ {BarrelKicked && not barrel_reset} [Inspect the barrel] The lid's shut tight.
Maybe you should let him cool off for a bit.
...
->OutsideMine

+ {barrel_reset && not item_laundry_room_key} [Talk to the man in the barrel]
->BarrelTalk

+ {kicked_for_key} [Inspect the barrel] You find it very hard to blame your sister for this particular situation, but you still feel you should solve this man's problem.
...
-> OutsideMine

+ {got_key_nicely} [Talk to barrelman] "Just you wait, I'll protect your modesty, barrelman." #CLASS: hero
"Awfully kind of you, thanks." #CLASS: barrelman
...
->OutsideMine

+ [Enter the mine] You enter the mine.
...
-> MineRoom1

+ [Check your inventory]
->Inventory -> OutsideMine


=BarrelImage
#IMAGE images/barrel.png
You walk up to the barrel.
It wiggles.
You're pretty sure there's something in it.
->BarrelSequence

=BarrelSequence
+ [Tap it with your foot] You tap it with your foot.

You hear some indistinct noises inside the barrel.

->BarrelSequence

+ [Kick it over] You kick the barrel over.
"AAAAAARGH!!!" #CLASS: barrelman
A short, stocky, bearded man in his birthday suit goes rolling out of the barrel.
->BarrelKicked

+ [Leave it alone] You leave it alone.
-> OutsideMine

=BarrelKicked
+ [Oh my!] He immediately tries to get back into the barrel, while spewing a stream of profanities.

+ + "Have you seen my sister?" #CLASS: hero

"YOU CRAZY SWAMP-WATER-DRINKING LOON! GET AWAY FROM ME!" #CLASS: barrelman

He clambers back into the barrel and slams the lid tightly shut.

+ + + Oops.
...
-> OutsideMine

=BarrelTalk
The man looks at you suspiciously.

+ "I'm sorry about earlier!" #CLASS: hero
    "That's alright," The man in the barrel eyes you. #CLASS: barrelman
    + + "Is a witch resposible for this?" #CLASS: hero
    He sighs, "Yes. She came through here claiming she could fix everything. And now look at me!"
    + + + "What did you tell her, exactly?" #CLASS: hero
    The man in the barrel pauses.
    "Life is just a never-ending series of chores," #CLASS: barrelman
    + + + + [Nod] You suddenly feel a kinship with the barrel-man, but you don't show it on the outside.
    "And day in, day out, I'm just washing black soot out of my work uniform." #CLASS: barrelman
    + + + + + "Uh, huh..." #CLASS: hero
    "So I said to her, I wish that it was LITERALLY IMPOSSIBLE for my uniform to pick up EVEN THE SMALLEST speck of dirt, and that it would ALWAYS shine RADIANTLY FOR ALL TO SEE!" #CLASS: barrelman
    + + + + + + [Look at the building] You both look at the glowing {building_is_laundry: laundry} building, with radiant light erupting from every window and crack.
    You both look back at each other.
    + + + + + + + [Show polite concern] You notice your jaw is hanging completely open and you are just staring at barrel-man.
    ->BarrelTalk2
    + + + + + + + [Show empathy] You raise your hand to shrug, but it moves of its own volition and slaps your forehead loudly.
    ->BarrelTalk2
    
+ "HAVE YOU SEEN MY SISTER?!" #CLASS: hero
    The man immediately pops back into the barrel, snapping the lid shut.
    ~barrel_reset--
    + + Oops.
    ...
    ->OutsideMine

VAR kicked_for_key = 0
VAR got_key_nicely = 0


=BarrelTalk2
"I'll give you a key to the laundry room if you help me get something to wear," he says. #CLASS: barrelman
"But be careful - it's so bright you could be blinded! No one else can go near, for we are miners and we need our vision, especially in the dark." #CLASS: barrelman
+ "Alright." #CLASS: hero
    He gives you the key to the laundry. #CLASS: getitem
    
    ~item_laundry_room_key++
    ...
    ->OutsideMine

    + [Kick the barrel over] You kick the barrel over, and the naked man tumbles out.
    "AAAAAAAARGHHH!!!" #CLASS: barrelman
    He scrambles back into the barrel, profanities flying left and right, and snaps the lid shut.
    + + You realize you have a terrible need to work on your self-control.
    At least he left the key outside the barrel, though.
    + + + Pick up the key
    ~item_laundry_room_key++
    ...
    ->OutsideMine

VAR item_clean_laundry = 0
VAR item_supplies_key = 0
VAR item_detergent = 0

=LaundryBuilding
You are standing inside a room with laundry supplies and various implements for doing laundry.

In the center of the room is a pile of clean laundry, atop which sits an object of utter radiance.

+ {not item_clean_laundry} [Grab some clean laundry] You grab some non-radiant clean laundry. #CLASS: getitem

    ~item_clean_laundry++
    
    ...
    ->LaundryBuilding

+ {item_clean_laundry} [Grab some clean laundry] You've already got some clean laundry.
    + + Barrel-man is naked, but he's not <i>that</i> naked.
    ...or is he?
    ...
    -> LaundryBuilding

+ {not item_supplies_key} [Grab some laundry supplies] You try to open the door marked "LAUNDRY SUPPLIES" but it's locked. These people sure are protective of their laundry.
    ...
    -> LaundryBuilding

+ {item_supplies_key && not item_detergent} [Grab some laundry supplies] You use the key to unlock the door marked "LAUNDRY SUPPLIES".

    You get yourself a box of <i>RADIANT SHINE Extra-Foamy Premium Laundry Detergent</i>. #CLASS: getitem
    
    ~item_detergent++
    
    ...
    -> LaundryBuilding

+ {item_supplies_key && item_detergent} [Grab some laundry supplies] You've already got some overpriced detergent.
    ...
    -> LaundryBuilding

+ [Leave the building] You leave the radiant laundry building.
    ...
    ->OutsideMine

+ [Check your inventory]
    ->Inventory ->LaundryBuilding


=MineRoom1
{BarrelKicked && barrel_reset == 0:
~barrel_reset++
} //If you kicked the man over and went in here, he'll come out because he's ready to talk to you now.

You are in the well-lit entry hall of the mine tunnel.

An exhausted foreman is leaning against a wall.

There's a sizable crack in the wall next to the foreman.

The tunnel goes on into the darkness.

+ [Talk to the foreman]
{not TalkToForeman: -> TalkToForeman}
{TalkToForeman: The foreman looks up at you. ->TalkToForeman2}

+ {asked_about_crack} [Examine the crack] You examine the crack in the wall.
->ExamineCrack

+ [Go deeper into the tunnel] You go deeper into the tunnel.
...
->TunnelDarkSection

+ [Exit the mine] You go back out the way you came.
...
->OutsideMine

+ [Check inventory]
->Inventory ->MineRoom1

=ExamineCrack
It's quite a large crack.

It looks like it goes pretty deep, and you might be able to fit through it.

+ [Try to squeeze through] You try to squeeze through the crack.
    ...
    + + It's a tight fit...
    ...
    + + + ...
    ...
    + + + + You emerge through the other end.
    ...
    -> MoleRoom
    
+ [Leave it alone]
-> MineRoom1


=TalkToForeman
The foreman looks up as you approach.

"Not another one of you." #CLASS: foreman

+ "I see you've met my little sister." #CLASS: hero

    "So you do know her! She came in, claiming to be some powerful witch who could fix everything."#CLASS: foreman
    
    "All I wanted was for my men not to have to work so hard in these mines."#CLASS: foreman
    
    + + "Uh-oh. What happened?"
    
    "As it happens, I have shockingly accurate recall. She said:" #CLASS: foreman
    
    "Working hard, for all the day," #CLASS: magic
    
    "Let's turn it around, and into play!" #CLASS: magic
    
    + + + "That doesn't sound too bad." #CLASS: hero
    
    "Have you ever seen a mine that's been transformed into a non-stop disco?" #CLASS: foreman
    
    + + + + "I get the feeling I'm going to have to." #CLASS: hero
    ...
    ->MineRoom1


VAR asked_about_crack = 0

=TalkToForeman2
+ "Can you tell me what my sister said again?" #CLASS: hero

"As it happens, I have shockingly accurate recall. She said:" #CLASS: foreman

"Working hard, for all the day," #CLASS: magic

"Let's turn it around, and into play!" #CLASS: magic

+ + "...And now your miners no longer have to work so hard, because the mine is a disco. Got it." #CLASS: hero
...
->TalkToForeman2

+ "What's with this crack in the wall?" #CLASS: hero

"Moles." #CLASS: foreman

+ + "Moles?" #CLASS: hero

~asked_about_crack++

"Moles." #CLASS: foreman
->TalkToForeman2

+ "See ya." #CLASS: hero
The foreman looks back down at his business.
...
->MineRoom1

VAR dark_section_sunglasses = 0

=TunnelDarkSection
It's really dark in here, and you can't see where you're going.
+ [Keep going] You keep going.
    You bang into something.
    {~"Oof!"|"Ow!"|"Ack!"|"Eep!"|"Ouch!"} #CLASS: hero
    + + It's really painful!
    ...
    -> TunnelDarkSection
    
+ [Go towards the entrance] You go back out towards the entrance {dark_section_sunglasses: and put your sunglasses away}.
    
    ~dark_section_sunglasses = 0
    ...
    -> MineRoom1

+ {not dark_section_sunglasses} [Check inventory] You put your sunglasses on and make it even worse.

    ~dark_section_sunglasses++
    ...
    ->TunnelDarkSection



=MoleRoom
Text
+ [Go back through the crack] You squeeze through the crack again.
...
->MineRoom1
+ [Check inventory]
->Inventory ->MoleRoom

->END

/*
Laundry room and come back to barrel man
Glowing sock for dark room
Mole who wants something from dancers
dancers who block the way, but teach you moves or something for mole
mole gives you key to laundry which has all the soap
put soap into the smoke machine

MOLE HOLE?
Exit the mine back out

*/