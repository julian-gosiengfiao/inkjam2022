=TransitionToMineArea

{not item_sunglasses:
~item_sunglasses++
} //In case we skip our way here

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

=OutsideMine

You are outside the entrance to a mine.

There is a single building out here, with intense light pouring out of every opening.

You notice a wiggling barrel next to the building.

+ [Enter the building] You try to enter the building.
{not item_laundry_room_key:
    It's locked, and you don't have a key.
    ...
    ->OutsideMine
}

+ {not BarrelKicked} [Inspect the barrel] You walk up to the barrel.
It wiggles.
You're pretty sure there's something in it.
-> BarrelSequence

+ {BarrelKicked && not barrel_reset} [Inspect the barrel] The lid's shut tight.
Maybe you should let him cool off for a bit.
...
->OutsideMine

+ {barrel_reset} [Talk to the man in the barrel]
->BarrelTalk

+ [Enter the mine] You enter the mine.
...
-> MineRoom1

+ [Check your inventory]
->Inventory -> OutsideMine




=BarrelSequence
* [Tap it with your foot] You tap it with your foot.

You hear some indistinct noises inside the barrel.

->BarrelSequence

+ [Kick it over] You kick the barrel over.
"AAAAAARGH!!!" #CLASS: barrelman
A short, stocky bearded man in his birthday suit goes rolling out of the barrel.
->BarrelKicked

+ [Leave it alone] You leave it alone.
-> OutsideMine

=BarrelKicked
+ [Oh my!] He immediately tries to get back into the barrel, while spewing a stream of profanities.

+ + "Have you seen my sister?" #CLASS: hero

"YOU CRAZY SWAMP-WATER-DRINKING LOON! GET AWAY FROM ME!" #CLASS: barrelman

He climbs back in the barrel and slams the lid tightly shut.

+ + + Oops.
...
-> OutsideMine


=BarrelTalk
The man looks at you suspiciously.


->END



=MineRoom1
{BarrelKicked:
~barrel_reset++
} //If you kicked the man over and went in here, he'll come out because he's ready to talk to you now.

You are in the well-lit entry hall of the mine tunnel.

An exhausted foreman is leaning against a wall.

The tunnel goes on into the darkness.

There's a sizable crack in the wall next to the foreman.

+ [Talk to the foreman]
-> TalkToForeman

+ [Examine the crack] You examine the crack in the wall.
->ExamineCrack

+ [Go deeper into the tunnel] You go deeper into the tunnel.
...
->TunnelDarkSection

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
Text
+ Okay.
->MineRoom1

=TunnelDarkSection
Text
+ Okay.
->MineRoom1
+ [Check inventory]
->Inventory ->TunnelDarkSection

=MoleRoom
Text
+ Okay.
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
*/