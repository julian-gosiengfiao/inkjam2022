=TransitionToMineArea

You walk for a while, and eventually the mountains in the distance get closer and closer.

At the base of one mountain, you see a pillar of light shoot into the sky.

This can't be good.

+ [Make your way to the pillar] You make your way to the pillar of light.

Before long, you arrive at your destination.

+ + It is the mine-pass, the only safe way through these mountains.

...
->OutsideMine


VAR item_laundry_room_key = 0

=OutsideMine

You are outside a mine.

There is a single building out here, with intense light pouring out of every opening.

You notice a wiggling barrel next to the building.

+ Enter the building
{not item_laundry_room_key: It's locked, and you don't have a key.}
{not item_laundry_room_key: ->OutsideMine}

+ [Inspect the barrel] You walk up to the wiggling barrel.
-> BarrelSequence

+ [Enter the mine] You enter the mine.
-> MineRoom1

+ [Check your inventory]
->Inventory -> OutsideMine

=BarrelSequence
It wiggles.

You're pretty sure there's something in it.

+ [Tap it with your foot] You tap it with your foot.

"EH?! WHO'S THERE?!" A voice erupts from the barrel. #CLASS: foreman

+ [Kick it over] You kick the barrel over.

"AAAAAARGH!!!" #CLASS: foreman

A short, stocky bearded man in his birthday suit goes rolling out of the barrel.

->BarrelKicked



=BarrelKicked
+ [Oh my!]



=MineRoom1
This is room 1. I'll figure something out here.

->END

