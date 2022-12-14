VAR looked_at_monster = 0
VAR listened_to_bickering = 0

=StartSequence
You are on a country road.

In the distance, {looked_at_monster: a Gorgon Eye} {not looked_at_monster: a monster} is terrorizing the town.

Beside you, your two sisters are bickering.

+ [Look at the monster] You look at the monster.

~looked_at_monster++

The Gorgon Eye is raking white-hot lasers across the helpless town, incinerating the odd cow or two.

It roars in delight. #CLASS: gorgoneye

+ + [{&Okay.|Great.}]
...
->StartSequence

+ Listen to their bickering

~listened_to_bickering++

"I'm the eldest sister, so I shouldn't have to fetch the staff," says Eldra.#CLASS: bigsis

"It's not fair just 'cause I'm the youngest! And the hut is so FAR!" says Yolene.#CLASS: littlesis

+ + [Sigh.] You dream of stuffing their mouths full of clay.
...
-> StartSequence

+ {item_staff_of_power} [Give Staff of Power to Eldra] You give the Staff of Power to Eldra.#CLASS: giveitem

~item_staff_of_power = 0

Yolene attempts to grab at the staff, but Eldra swats her away easily.

"Now, Gorgon Eye, prepare to feel the might of the most powerful witch in the land!"#CLASS: bigsis

{item_sunglasses: ->GorgonEyeObliterationSunglasses}
{not item_sunglasses: ->GorgonEyeObliterationNoSunglasses}

+ {listened_to_bickering} [Go to the hut] You walk the twenty steps back to the hut where you live.
...
->Hut

+ [Check inventory] #CLASS: inventory
-> Inventory ->StartSequence

=GorgonEyeObliterationSunglasses

+ {item_sunglasses} [Put on your sunglasses] It is night, but you put on your sunglasses.

Eldra recites a brief incantation, then a beam with the force of an exploding star erupts from her staff.

It obliterates the Gorgon Eye wholly.#CLASS: redtext

+ + [Take your sunglasses off] Having saved your vision, you slide your sunglasses back in your pocket.
->GorgonEyeAfterObliteration

=GorgonEyeObliterationNoSunglasses

+ {not item_sunglasses} [Here it comes.]

Eldra recites a brief incantation, then a beam with the force of an exploding star erupts from her staff.

<b>It obliterates the Gorgon Eye wholly.</b> #CLASS: redtext

The blast is totally blinding.

+ + [Try to shield your face]

"AAAARRRRGHHH," you loudly curse. #CLASS: hero
-> GorgonEyeAfterObliteration

=GorgonEyeAfterObliteration

Yolene sulks.

Satisfied, Eldra says "Let's go back to bed now." #CLASS: bigsis

+ + + + [Okay.] You go to bed.
...
+ + + + + Zzz... #CLASS: hero
...
#CLEAR
-> NextDay //NextDay.ink



VAR item_staff_of_power = 0
VAR item_sunglasses = 0

=Hut

{(Hut > 1 || item_staff_of_power): You are in the hut you share with your two sisters.}
{(Hut <= 1 || not item_staff_of_power): The hut you share with your two sisters is modest, but comfortable.}

{(Hut <= 1 || not item_staff_of_power): Outside, you continue to hear the sounds of common folk dodging magical fire, mixed in with Eldra and Yolene's argu-whining.}

{not item_staff_of_power: The Staff of Power sits neatly on the mantle above the fireplace.}
{item_staff_of_power: There's an empty space above the mantle where the Staff of Power usually sits.}

{(item_staff_of_power && not item_sunglasses): You notice your favorite pair of sunglasses lying on the kitchen table.}

+ {not item_staff_of_power} [Take the Staff of Power] You take the Staff of Power. #CLASS: getitem
~item_staff_of_power = 1
...
-> Hut

+ {(item_staff_of_power && not item_sunglasses)} [Take sunglasses] You take your sunglasses.
~item_sunglasses ++
...
-> Hut

+ [Leave the hut] You leave the hut.

...
->StartSequence

+ [Check inventory]
-> Inventory ->Hut

-> END
