=NextDay

You wake up to the sound of a screaming turkey.

+ [What]
...
->HutNextDay

=HutNextDay

You are in the hut you share with your two sisters.

It is morning, and the sun is shining.

There's an empty space above the mantle where the Staff of Power usually sits.

{BehindHutNextDay == 0: There is the sound of a screaming turkey coming from outside.}

+ [Go outside] You go outside.
...
->OutsideHutNextDay

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

+ [Go to town] You go to town.
->Town

=BehindHutNextDay

{BehindHutNextDay > 1: ->BehindHutTemp}

You are standing behind the hut.

There is a pile of wet laundry on top of what appears to be a screaming turkey.

<i>"GENERICAAAAAAAAAAAA!!!"</i>

+ [Did that turkey just say my name?!] You approach the turkey.

"Generica, get me out of this pile of wet laundry!"

You have never seen a turkey speak with such a mix of authority and desperation.

->WalkAwayOrHelp

VAR walked_away = 0

=WalkAwayOrHelp

+ + [Help {walked_away > 0: Eldra} {walked_away == 0: the turkey}] You lift the pile of wet laundry off the struggling bird.

It wobbles to its feet and shakes off its feathers.

->NextDayExplanation

+ + [Walk away]

~walked_away++
"GENERICA, DON'T YOU DARE TURN YOUR BACK ON YOUR SISTER LIKE THAT!"

...Yes, this turkey is definitely Eldra.

->WalkAwayOrHelp

=NextDayExplanation

+ ["What happened?"] "What happened?" you ask.

"Yolene has taken the Staff of Power and fled."

Eldra continues, "And she's turned me into a turkey!"

+ + "Well, you've not been very kind to her."

"I suppose I haven't been the best sister." Eldra replies.
->NextDayExplanation2

+ + "That's terrible!"

"It is." Eldra replies.
->NextDayExplanation2

+ + "That's hilarious."
Eldra simply gives you a cold look. (A cold turkey look?)

->NextDayExplanation2

=NextDayExplanation2
+ ["Where did she go?"] "Where did she go?" you ask.

"She ran off towards the town, proclaiming that she would be a much better witch than I was."

Eldra continues, "But she's not old enough to harness the power of the staff!"

+ + "I'm going to town to find her."

"Good luck, Generica!"

...

//TODO: FLESH OUT ASPIRATIONS/INTENTIONS IN THIS DIALOGUE, MAKE IT MORE INTERESTING I GUESS. I DON'T SUPER-LIKE IT.

->BehindHutTemp

=BehindHutTemp

You are standing behind the hut.

Your older sister Eldra is here, in the form of a turkey.

There is a pile of wet laundry on the ground.

+ [Talk to Eldra] You talk to Eldra.
"There's no time to lose! Find your sister before she hurts herself, or someone else!"
+ + ["Don't get your feathers in a bunch."] "Don't get your feathers in a bunch." you reply.
...
->BehindHutTemp

+ [Go to the front of the hut]
You go to the front of the hut.
...
-> OutsideHutNextDay


->END