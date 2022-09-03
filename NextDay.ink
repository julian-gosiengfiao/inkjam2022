=NextDay

You wake up to the sound of a screaming turkey.

+ [What]
...
->HutNextDay

=HutNextDay

You are in the hut you share with your two sisters.

It is morning, and the sun is shining.

There's an empty space above the mantle where the Staff of Power usually sits.

{not item_sunglasses: Your favorite pair of sunglasses are lying on the kitchen table.}
{BehindHutNextDay == 0: There is the sound of a screaming turkey coming from outside.}

+ {not item_sunglasses} [Pick up your sunglasses] You pick up your sunglasses. #CLASS: getitem
~item_sunglasses++
...
->HutNextDay

+ {not item_sunglasses} [Go outside] You start to leave the hut.
But you regret forgetting your sunglasses the last time you did this.
...
->HutNextDay

+ {item_sunglasses} [Go outside] You go outside.
...
->OutsideHutNextDay

+ [Check Inventory]
->Inventory ->HutNextDay

=OutsideHutNextDay

You are on a country road.

In the distance, you see a peaceful country town.

{BehindHutNextDay == 0: There is what sounds like a screaming turkey coming from behind the house.}

+ [Go into hut] You go into the hut.
...
->HutNextDay

+ [Go behind hut] You go behind the hut.
...
-> BehindHutNextDay

+ [Go towards town] You go towards town.
->outsidetown

+ [Check inventory]
-> Inventory ->HutNextDay

=BehindHutNextDay

{BehindHutNextDay > 1: ->BehindHutNoScreaming}

You are standing behind the hut.

There is a pile of wet laundry on top of what appears to be a screaming turkey.

<i>"GENERICAAAAAAAAAAAA!!!"</i> #CLASS: bigsis

+ [Did that turkey just say my name?!] You approach the turkey.

"Generica, get me out of this pile of wet laundry!" #CLASS: bigsis

You have never seen a turkey speak with such a mix of authority and desperation.

->WalkAwayOrHelp

VAR walked_away = 0

=WalkAwayOrHelp

+ + [Help {walked_away > 0: Eldra} {walked_away == 0: the turkey}] You lift the pile of wet laundry off the struggling bird.

It wobbles to its feet and shakes off its feathers.

->NextDayExplanation

+ + [Walk away]

~walked_away++
"GENERICA, DON'T YOU DARE TURN YOUR BACK ON YOUR SISTER LIKE THAT!" #CLASS: bigsis

...Yes, this turkey is definitely Eldra.

->WalkAwayOrHelp

=NextDayExplanation

+ ["What happened?"] "What happened?" you ask. #CLASS: hero

"Yolene has taken the Staff of Power and fled." #CLASS: bigsis

Eldra continues, "And she's turned me into a turkey!" #CLASS: bigsis

+ + "Well, you've not been very kind to her." #CLASS: hero

"I suppose I haven't been the best sister." Eldra replies.#CLASS: bigsis
->NextDayExplanation2

+ + "That's terrible!" #CLASS: hero

"It is." Eldra replies. #CLASS: bigsis
->NextDayExplanation2

+ + "That's hilarious." #CLASS: hero
Eldra simply gives you a cold look... A cold turkey look.

->NextDayExplanation2

=NextDayExplanation2
+ ["Where did she go?"] "Where did she go?" you ask. #CLASS: hero

"She ran off towards the town, proclaiming that she would be a much better witch than I was." #CLASS: bigsis

Eldra continues, "But she's not old enough to harness the power of the staff!" #CLASS: bigsis

+ + "I'm going to town to find her." #CLASS: hero

"Good luck, Generica!" #CLASS: bigsis

...

//TODO: FLESH OUT ASPIRATIONS/INTENTIONS IN THIS DIALOGUE, MAKE IT MORE INTERESTING I GUESS. I DON'T SUPER-LIKE IT.

->BehindHutNoScreaming

=BehindHutNoScreaming

You are standing behind the hut.

Your older sister Eldra is here, in the form of a turkey.

There is a pile of wet laundry on the ground.

+ [Talk to Eldra] You talk to Eldra.
"There's no time to lose! Find our sister before she hurts herself, or someone else!" #CLASS: bigsis
+ + ["Don't get your feathers in a bunch."] "Don't get your feathers in a bunch." you reply. #CLASS: hero
...
->BehindHutNoScreaming

+ [Go to the front of the hut]
You go to the front of the hut.
...
-> OutsideHutNextDay

+ [Check inventory]
-> Inventory ->BehindHutNoScreaming

->END