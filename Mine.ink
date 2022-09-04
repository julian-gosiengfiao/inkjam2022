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

=OutsideMine

You are outside the entrance to a mine.

There is a {not building_is_laundry: single building out} {building_is_laundry: laundry building} here, with intense light pouring out of every opening.

{not barrel_reset: You notice a wiggling barrel next to the building.}
{barrel_reset: There is a man in a barrel, eyeing you from beneath the lid.}


+ [Enter the building] You try to enter the {building_is_laundry: laundry} building.
{not item_laundry_room_key:
    It's locked, and you don't have a key.
    {not building_is_laundry: You note it says: "LAUNDRY STATION" in big letters on the door.}
    ~building_is_laundry++
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
The barrelman sighs, "Yes. She came through here claiming she could fix everything. And now look at me!"
+ + + "What did you tell her, exactly?"
The barrel man regards you for a moment.
"I'm just so sick of doing endless amounts of 

->OutsideMine

+ "HAVE YOU SEEN MY SISTER?!" #CLASS: hero
The man immediately pops back into the barrel, snapping the lid shut.
~barrel_reset--
+ + Oops.
...
->OutsideMine


->END



=MineRoom1
{BarrelKicked && barrel_reset == 0:
~barrel_reset++
} //If you kicked the man over and went in here, he'll come out because he's ready to talk to you now.

You are in the well-lit entry hall of the mine tunnel.

An exhausted foreman is leaning against a wall.

The tunnel goes on into the darkness.

There's a sizable crack in the wall next to the foreman.

+ [Talk to the foreman]
{not TalkToForeman: -> TalkToForeman}
{TalkToForeman: The foreman looks up at you. ->TalkToForeman2}

+ {asked_about_crack} [Examine the crack] You examine the crack in the wall.
->ExamineCrack

+ [Go deeper into the tunnel] You go deeper into the tunnel.
...
->TunnelDarkSection

+ [Exit the mine] You exit the mine.
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

+ + + "That doesn't sound too bad."

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

=TunnelDarkSection
Text
+ [Go towards the entrance] You go back out towards the entrance.
...
->MineRoom1
+ [Check inventory]
->Inventory ->TunnelDarkSection

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
*/