VAR looked_at_monster = false

=StartSequence
You are on a country road.

In the distance, {looked_at_monster: a Gorgon Eye} {not looked_at_monster: a monster} is terrorizing the town.

Beside you, your two sisters are bickering.

+ Look at the monster

~looked_at_monster = true

The Gorgon Eye is raking white-hot lasers across the hapless townfolk, incinerating the odd cow or two.

It roars in delight.

+ + [Okay.]

...

->StartSequence

* Listen to their bickering

"I'm the eldest sister, so I shouldn't fetch the magical wand.", 



-> END
