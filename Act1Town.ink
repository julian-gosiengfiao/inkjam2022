=outsidetown

{not townsquare} You step out of the front door of your house, and look forward towards the town. With any luck, your sister will still be there. You hear a "moo" sound off to one side. <br> <br> A frankly enormous cow is moving towards the front door of your house, followed by an anxious cowman. It reaches your front door, and thunks down in front of the doorway, and begins to chew on your begonias.
->cowhouse

=cowhouse

{not townsquare} You are standing outside the home you share with your sisters. Ahead is the centre of town, where you know your sister has gone.

The cowman looks at you, and shrugs his shoulders. 
The cow looks at you, and chews on your flowers. It is huge and muscular.
+ Talk to cowman
->cowman
+ Look at cow {whatacow: again}
->whatacow
+ Go into town
->townsquare
+ {failedudders} Try to work out a solution to the overly sturdy udders
->uddersolutions
* {tongs and pintglass} "I've got some blacksmith's tongs to squeeze the udders with! And a pintglass to squeeze the milk into!" #CLASS: hero
->squeeze

=whatacow
What. A. Cow.
(insert cow picture here)
+ Talk to cowman
->cowman
+ Head back to the road to town
...
->outsidetown

=cowman
"Hi there! So, I was worried that Big Beautiful Bessie here was going to get stomped on in future monster attacks..." #CLASS: cowman
+ "I see..." #CLASS: hero
"And then your sister showed up and offered to help!" #CLASS: cowman
+ + "Oh no!" #CLASS: hero
"And she said: #CLASS: cowman

I wish, I wish, the cow would be #CLASS: magic
Able to withstand injury! #CLASS: magic

"And now, Bessie is so big and sturdy, I can't even squeeze her udders! Look!
+ + + look
->failedudders

=failedudders
The cowman takes both hands and squeezes squeezes squeezes Bessie's udder teats, but not a drop of milk comes out.
...
-> cowhouse

=uddersolutions
+ {pintglass and not tongs} "I've got a pint glass to put the milk in!" #CLASS: hero
->notongs
+ {tongs and not pintglass} "I've got some blacksmith's tongs! Maybe we can squeeze the udders with this!" #CLASS: hero 
->noglass

+ "I guess I'll walk around, see if I can find some solutions." #CLASS: hero
... 
->outsidetown

=notongs
"That's great that you've got a place to take some milk, but I still don't know how to extract any milk from Bessie!"  #CLASS: cowman
+ "Hmmmmmmm..." #CLASS: hero
->uddersolutions

=noglass
"Oh, amazing! That MIGHT work... my bucket is a bit dirty though, do you have something we can squirt some milk into?" #CLASS: cowman
+ "No... but I can go look for something!" 
...
->outsidetown


=squeeze
You and the cowman each hold one of the handles of the blacksmith's tongs, and aim at an udder teat, which is positioned carefully above your empty pint glass.
"Ready?" #CLASS: cowman
+ "Ready!" #CLASS: hero
->hotmilk

=hotmilk
You both squeeze together, and a stream of lilac-coloured milk comes out. 
"You did it! Please, feel free to take that glass. I'll clean my bucket and get to milking the rest myself!" #CLASS: cowman
+ "Thanks!" #CLASS: hero
You now have some very warm cow's milk in a pint glass. It's lilac-coloured, but that's probably fine.
You wave goodbye to the cowman.
...
->outsidetown

=townsquare

You are in the town square. There is a dazed villager. 
* Look around
->looktownsquare
+ Talk to dazed villager
->dazedvillager
+ {looktownsquare} [Leave the town square (but which way?)] You decide to leave the town square.
->townsquarewhere


=dazedvillager
+ "What happened here?" #CLASS: hero
->chatdazedwhat
+ "Where did my little sister go?" #CLASS: hero
->chatdazedwhere
+ Actually, maybe don't talk to the villager just now.
...
->townsquare
* {failedudders or milkrequest} Take a pint glass.
->pintglass



=chatdazedwhat
"It was your little sister! She came through here with the Staff of Power and changed a whole bunch of stuff! Oooh, the magic! The surprise! I didn't know what to do! I still don't! #CLASS: dazedvillager
+ "Where did my little sister go?" #CLASS: hero
->chatdazedwhere
+ You leave the villager to his dazedness[.] 
...
->townsquare

=chatdazedwhere
"She went to the toll bridge, transformed the tollman, and then crossed the bridge and headed towards the Fairy Forest! #CLASS: dazedvillager
"Ugh, I hate the Fairy Forest." #CLASS: hero
+ "And what happened here?" #CLASS: hero
->chatdazedwhat
+ You leave the villager to his dazedness[.] 
...
->townsquare

= looktownsquare

You look around the town square.
There's the local <b>tavern</b>, the Embarrassing Cucumber, which appears to have icicles on the inside of the windows. 
There's a path onwards, towards the <b>toll bridge</b>, and you know the <b>blacksmith's</b> is that way, too. 
And there's a road back to the <b>edge of town</b>. 

+ Seems like there's lots of places to go.
...
->townsquare

=townsquarewhere
+ Back to the cow fields, towards your home
->outsidetown
+ Forward towards the toll bridge and blacksmith's
->tollbridge
+ Into the Tavern
->tavern
+ Stay here
->townsquare


=smith

In the smithy.
There is a blacksmith to talk to (add dialogue later)
{not tongs: He is using these just beautiful tongs, and he's holding them in his hand.}
* Distract the blacksmith so you can steal the tongs
->tongs
+ Leave
...
->tollbridge

=tongs

"LOOK OVER THERE!" #CLASS: hero
He looks over there. 
You steal the tongs. 

+ You now have some tongs in your inventory.
->smith


=tavern 

In the tavern, everything is very cold. There is a light dusting of snow on the floor.
There is a shivering barman (later, I'll write barman dialogue).
There is a magical cold box.
* {hotmilk} You cool the hot cow's milk down in the magical cold box.
->coldmilk
+ Leave
->townsquare


=pintglass
You now have a pint glass in your inventory. It is empty.
->tavern
->DONE

=coldmilk
You now have a pint glass of cold cow's milk in your inventory.
->tavern


=tollbridge

At the toll bridge, you see a big troll. He won't let you pass. 
{milkrequest: "Hey! Did you get me a big pint glass of cold cow's milk yet?" } #class: troll
There's some clanking metal noises coming from the <b>blacksmith's forge</b>, next to the toll bridge. 
+ Talk to the troll
->troll
+ {milkrequest and hotmilk and not coldmilk} You offer the fresh milk you just got to the troll.
->wrongmilk
-+ {milkrequest and coldmilk and not trollmilkget} You offer the big pint glass of cold milk to the troll.
->trollmilkget
+ Enter the blacksmith's
->smith
+ Go back to the town square
->townsquare


=troll
"I complained to your sister that no one was taking me seriously, and no one paid the toll. So she turned me into a troll." #class: troll
+ "And how does that make you feel?" #CLASS: hero
->trollfeelings
+ "Can you let me past?" #CLASS: hero
->milkrequest

=trollfeelings

"Honestly? I kind of like it." #class: troll
+ "You do?" #CLASS: hero
"Yeah. Before, everyone would push me around, and barge past without paying. Even the goats would just charge me off the bridge. Now I'm a figure of authority." #class: troll
...
->tollbridge

=milkrequest
"Now that I'm a troll, I have a real craving for goat's milk. But I guess I could settle for a <b>big pint glass of cold COW'S milk!</b>" #class: troll
+ "But I don't have a glass of milk. Can't you just let me past and let me go after my sister?" #CLASS: hero
->nomilk
+ {hotmilk and not coldmilk} You offer the fresh milk you just got to the troll.
->wrongmilk
+ {coldmilk and not trollmilkget} You offer the big pint glass of cold milk to the troll.
->trollmilkget
+ {trollmilkget} Having done everything you want to do in town, you cross the bridge.
->ACT2
+ Go back to the Town Square
...
->townsquare



=nomilk
"Nope! Your sister taught me to stand up for myself, so I am insisting on a toll. Ahem... YOUUUUU SHALL-NOT.... PASSSSS!!! without paying first."
"Can't I pay coins?"#CLASS: hero
"Do you have coins?" #class: troll
+ "No." #CLASS: hero
->nocoins
+ "Yes."#CLASS: hero
->yescoins

=nocoins
"Then no, you can't cross. A big pint glass of cold milk, please!"
->tollbridge

=yescoins
"Show me the coins."
+ "No."
->nocoins
+ "I don't have them right HERE."
->nocoins


=wrongmilk
The troll takes the glass.
"Ugh! This milk is warm! Can't you cool it down first?" #class: troll
He hands it back.
->tollbridge

=trollmilkget
The troll takes the glass.
"Hmmm, I love the colour! And it's nice and cold! Thank you!"
"You're... welcome, I guess?"
"You're now free to cross the bridge. But, just so you know, if you want to cross BACK again... it's another toll."
"What?"
"So I recommend you do everything you want to do in town before you cross."
+ Go ahead and cross
->ACT2
+ Stay in town a bit longer
->tollbridge


=ACT2

START OF ACT 2

-> TransitionToMineArea

->END
