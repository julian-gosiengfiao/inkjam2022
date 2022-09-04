VAR looked_at_monster = 0
VAR listened_to_bickering = 0

=StartSequence
It's early evening, and you are on a country road, not far from home.

In the distance, {looked_at_monster: a Gorgon Eye} {not looked_at_monster: a monster} is terrorizing the town.

Beside you, your big sister and little sister are shouting at each other.

+ [Look at the monster] You look at the monster.

~looked_at_monster++

The Gorgon Eye is raking white-hot lasers across the helpless town, incinerating the odd cow or two.

It roars in delight. #CLASS: gorgoneye

+ + [{&Okay.|Great.}]
...
->StartSequence

* Listen to their shouting match

~listened_to_bickering++
Eldra is giving orders to Yolene, as usual.
“It’s really quite simple. Rush over there and be a distraction, and I’ll blast it over beyond the town walls with the Staff of Power."  #CLASS: bigsis
"Why can’t <i>you</i> be the distraction for a change, and  <i>I’ll</i> use the Staff -”#CLASS: littlesis

+ + [Sigh.] You dream of stuffing their mouths full of clay. <br> Also, neither of them is holding the Staff of Power. It must still be at home.
...
-> StartSequence

+ {item_staff_of_power} [Give Staff of Power to Eldra] You give the Staff of Power to Eldra.#CLASS: giveitem
~item_staff_of_power = 0
->EldraStaff
+ {item_staff_of_power} [Throw Staff of Power to Yolene] You throw the Staff of Power to Yolene.#CLASS: giveitem
~item_staff_of_power = 0
->YoleneStaff


+ {listened_to_bickering} [Go to the cottage] You walk the twenty steps back to the cottage where you live.
...
->Hut


+ [Check inventory] #CLASS: inventory
-> Inventory ->StartSequence

=GorgonEyeObliterationSunglasses

+ {item_sunglasses} [Put on your sunglasses] It is night, but you put on your sunglasses.

Eldra recites a brief incantation:
Monster, cower before my might #CLASS: magic
I’ll blast your eyeball out of sight! #CLASS: magic
then a beam with the force of an exploding star erupts from her Staff.

It obliterates the Gorgon Eye wholly.#CLASS: redtext

+ + [Take your sunglasses off] Having saved your vision, you slide your sunglasses back in your pocket.
->GorgonEyeAfterObliteration

=GorgonEyeObliterationNoSunglasses

+ {not item_sunglasses} [Here it comes.]

Yolene lifts the Staff with a determination in her eyes. Her aim wobbles for a second as she declares: 
<br>
“I wish this big bad monster, strong #CLASS: magic
Would fly back home… where he belong!” #CLASS: magic
<br>

+ + [Wince at the terrible grammar] You wince at the terrible grammar, then a blinding white beam bursts out of the Staff.

<b>It blasts a charred and wailing Gorgon Eye into the sky, over the town wall, and out of sight.</b> #CLASS: redtext

The beam is incredibly bright.

+ + + [Try to shield your face]

"AAAARRRRGHHH!" #CLASS: hero
-> GorgonEyeAfterObliteration

=EldraStaff

Yolene attempts to grab at the staff, but Eldra swats her away easily.

"Now, Gorgon Eye, prepare to feel the might of the most powerful witch in the land!"#CLASS: bigsis

{item_sunglasses: ->GorgonEyeObliterationSunglasses}
{not item_sunglasses: ->GorgonEyeObliterationNoSunglasses}


=YoleneStaff

Eldra is shouting objections at you as Yolene catches the staff, laughs with joy, and spins it around into a martial pose.

"HA! NOW you'll see what I can do!" #CLASS: littlesis

{item_sunglasses: ->GorgonEyeObliterationSunglasses}
{not item_sunglasses: ->GorgonEyeObliterationNoSunglasses}


=GorgonEyeAfterObliteration

{EldraStaff:
Yolene rushes up to you, clearly annoyed.
"Mideline, <i> why </i> did you give it to <i>her</i>? I've been practising my magic so much! <i>I</i> should have had a chance!" #CLASS: littlesis
"You are still not ready for the powers of this Staff, little one." #CLASS: bigsis
Yolene lets out a yell of frustration, and lunges to grab the Staff out of her sister's hands. 
"UGGGGH! Just let me SHOW YOU WHAT I CAN DO!" #CLASS: littlesis
}
{YoleneStaff: 
"HaHAAAA! I DID IT! I knew I could!" #CLASS: littlesis
Eldra walks up to you both, looking stern.
"And yet the creature still lives, and could return. Really, Mideline, our little sister is not ready for such tasks." #CLASS: bigsis
Eldra tries to pull the Staff out of Yolene's hands, and Yolene pulls back.
}
+ Uh oh. 
Your sisters pull and pull on the Staff, shouting at each other. The Staff begins to glow again.

"You ALWAYS think that you know best!" #CLASS: littlesis
"For goodness’ sake, give it a REST!" #CLASS: bigsis

+ + PWYSHHH!!
A flash of light flies out of the tip, unfortunately aiming straight at your face!
+ + + BAM!
...
+ + + + ...
...
+ + + + + Zzz... #CLASS: hero
...
#CLEAR
-> NextDay //NextDay.ink



VAR item_staff_of_power = 0
VAR item_sunglasses = 0

=Hut

{(Hut > 1 || item_staff_of_power): You are in the cottage you share with your two sisters.}
{(Hut <= 1 || not item_staff_of_power): The cottage you share with your two sisters is modest, but comfortable.}

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

+ [Leave the cottage] You leave the cottage.

...
->StartSequence

+ [Check inventory]
-> Inventory ->Hut

-> END
