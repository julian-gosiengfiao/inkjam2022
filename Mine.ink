=TransitionToMineArea

{not item_sunglasses:
~item_sunglasses++
} //In case we skip our way here

You walk for a while, and eventually the mountains in the distance get closer and closer.

At the base of one mountain, you see a pillar of light shoot into the sky.

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
-> MineRoom1

+ [Check your inventory]
->Inventory -> OutsideMine




=BarrelSequence
* [Tap it with your foot] You tap it with your foot.

You hear some indistinct noises inside the barrel.

->BarrelSequence

+ [Kick it over] You kick the barrel over.
"AAAAAARGH!!!" #CLASS: foreman
A short, stocky bearded man in his birthday suit goes rolling out of the barrel.
->BarrelKicked

+ [Leave it alone] You leave it alone.
-> OutsideMine

=BarrelKicked
+ [Oh my!] He immediately tries to get back into the barrel, while spewing a stream of profanities.

+ + "Have you seen my sister?" #CLASS: hero

"YOU CRAZY SWAMP-WATER-DRINKING LOON! GET AWAY FROM ME!" #CLASS: foreman

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

This is room 1. I'll figure something out here.

->END

