=outsidetownfirstentry

You start down the road towards the town. With any luck, your little sister will still be there.

+ Eldra can be annoyingly bossy...
... but she <i>is</i> the <b>town protector</b>, and in turkey form and without the Staff, she can't do much.
->questthoughts

=questthoughts

* Yolene can be a lot of work... 
... but you love her, and that much power could hurt someone.
->questthoughts
* Rushing around after magical disasters...
... is not your idea of a good time. 
But at this point? You're kind of used to being in charge of clean up. 
Ugh. 
->questthoughts
+ Enough reflection! You'd better get moving!
You hear a moo sound behind you.
+ + That sounded like an exceptionally deep moo.

A frankly enormous cow has shuffled into the middle of the path, followed by an anxious cowman.

It stops right there in the middle, blocking all traffic.

+ + + That's fine, you didn't leave anything important back at home anyway.
#CLEAR
->Chapter1

=Chapter1
ACT ONE: THE TOWN #CLASS: chapter1
+ [Begin]
...
->cowencounter

->cowencounter

=cowencounter

You are standing on the road between your hut and the town, next to a cowman and a cow.

The cowman looks at you, and shrugs his shoulders. 
The cow looks at an imperceptible point in the far distance, and chews on some flowers. It is huge and muscular.
+ Look at cow {whatacow: again}
#CLEAR
->whatacow
+ {not cowman} [Talk to cowman]
->cowman
+ {cowman and not hotmilk} [Get the cowman to repeat his problem to you]
->cowman
+ {failedudders and not tongs} [Watch the cowman fail at squeezing]
->failedudders
+ {failedudders and not hotmilk} [Try to work out a solution to the overly sturdy udders]
->uddersolutions
* {tongs and not hotmilk} "I've got some blacksmith's tongs to squeeze the udders with!" #CLASS: hero
->squeeze
* {hotmilk} "I want to squeeze the udders again!" #CLASS: hero
->squeeze
+ {hotmilk} [Talk to happy cowman]
->happycowman
+ [Go into town] You walk past the nearby half-ruined houses, and towards the town square.
...
->townsquare

=happycowman
"Thank you so much! Bessie thanks you too!" #CLASS: cowman
+ "You're welcome, Bessie." #CLASS: hero
->whatacow

=whatacow
<b> What. A. Cow. </b>
#IMAGE: images/cow-small.jpg
+ Pull yourself away from your admiration
...
->cowencounter

=cowman
"Hi there Midelle! So, I was worried that Big Beautiful Bessie here was going to get stomped on in future monster attacks..." #CLASS: cowman
+ "I see..." #CLASS: hero
"And then your sister showed up and offered to help me with a Blessing!" #CLASS: cowman
+ + "Oh no!" #CLASS: hero
"And she chanted: #CLASS: cowman
<br>
I wish this beast that eats a flower #CLASS: magic
Would gain a most tremendous power! #CLASS: magic
<br>
"And now, Bessie is so big and sturdy, I can't even <b>squeeze her udders!</b> Look!
+ + + [Look]
->failedudders

=failedudders
The cowman gets the bucket ready, takes both hands and <i>squeezes squeezes squeezes</i> Bessie's udder teats, but not a drop of <b>milk</b> comes out.
...
-> cowencounter

=uddersolutions
+ {tongs} "I've got some blacksmith's tongs! Maybe we can squeeze the udders with this!" #CLASS: hero 
->squeeze
+ {tollbridge} "There´s a big strong troll the other side of town. I bet he could squeeze those udders!"#CLASS: hero
->cownomove
+ "I guess I'll walk around, see if I can find some solutions." #CLASS: hero
... 
->cowencounter

=cownomove
"That's great and all, but I can't make Bessie move when she's this big./*, and she just loves your begonias. I'm afraid we can't move.*/" #CLASS: cowman
+ "Hmmm... maybe we can get something stronger than our hands to squeeze the teats." #CLASS: hero
->cowencounter

=squeeze
You and the cowman each hold one of the handles of the blacksmith's tongs, and aim at an udder teat, which is positioned carefully above the cowman's bucket.
"Ready?" #CLASS: cowman
+ "Ready!" #CLASS: hero
->hotmilk

=hotmilk
#CLEAR 
You both squeeze together, and a stream of lilac-coloured milk comes out, straight into the waiting bucket. 
"You did it! Please, feel free to take that bucketful as payment. I'll just go get my other bucket!" #CLASS: cowman
#IMAGE: images/bucket-small.jpg
+ "Thanks!" #CLASS: hero
You now have some very warm cow's milk in a milking pail. It's lilac-coloured, but that's probably fine.
You wave goodbye to the cowman.
...
->cowencounter

=townsquare
You are in the town square. There is a dazed villager sitting on the floor, with frost in her hair. 
+ /*{not dazedvillager}*/ [Talk to dazed villager]
->dazedvillager
/*+ {dazedvillager} [Talk to the dazed villager again] //Tried removing this because new options don't appear on re-talk - if that makes sense?
->dazedvillager*/
* Look around
->looktownsquare
+ {looktownsquare} [Leave the town square (but which way?)] You decide to leave the town square.
->townsquarewhere
+ Admire the architecture
->architecture

=architecture
#CLEAR
#IMAGE: images/magicalVillage-small.jpg 
+ "I'm glad the Gorgon Eye never made it here." 
->townsquare

=dazedvillager
+ "What happened here?" #CLASS: hero
->chatdazedwhat
+ "Where did my little sister go?" #CLASS: hero
->chatdazedwhere
+ "Why is there frost in your hair?" #CLASS: hero
->chatdazedwhy
+ [Leave the villager to her dazedness] You leave the villager to her dazedness.
/*+ Actually, maybe don't talk to the villager just now.*/ //Tried making the dazed villager's conversation sit in one tree; kept the old code just in case.
...
->townsquare

=chatdazedwhat
"Midelle! It was your little sister! She came through here with the Staff of Power and changed a whole bunch of stuff!" #CLASS: dazedvillager
"Oooh, the magic! The surprise! I didn't know what to do! I still don't!" #CLASS: dazedvillager
->dazedvillager
/*+ "What did she do?" #CLASS: hero 

->chatdazedwhy
+ "Where did my little sister go?" #CLASS: hero
->chatdazedwhere
+ [Leave the villager to her dazedness] You leave the villager to her dazedness. 
...
->townsquare*/

=chatdazedwhere
"She went to the toll bridge, transformed the tollman, and then crossed the bridge and headed towards the mountains! #CLASS: dazedvillager
->dazedvillager
/*"Ugh, I hate climbing." #CLASS: hero
+ "And what happened here?" #CLASS: hero
->chatdazedwhat
+ [Leave the villager to her dazedness] You leave the villager to her dazedness.
...
->townsquare*/

=chatdazedwhy
"I was in the "Embarrassing Cucumber" when your sister barged in, pronounced she was going to make a "Blessing", and then suddenly I got all frozen over! You'll have to ask the barman what happened."#CLASS: dazedvillager
->dazedvillager

= looktownsquare
You look around the town square.
There's the local <b>tavern</b>, the <i>"Embarrassing Cucumber"</i>, which appears to have icicles on the inside of the windows. 
There's a path onwards, towards the <b>toll bridge</b>, and you know the <b>blacksmith's</b> is that way, too. 
And there's a road back to the <b>edge of town</b>. 

+ Seems like there's lots of places to go.
...
->townsquare

=townsquarewhere
+ Back to the cow fields, towards your home
->cowencounter
+ Forward towards the toll bridge and blacksmith's
->tollbridge
+ Into the Tavern
->tavern
+ Stay here
->townsquare


=smith
...
You are in the smithy.
There is a blacksmith here{not tongs:, hard at work.}{tongs:, looking puzzled.} 
You know from past experience that he is very absent-minded. 
{not tongs: He is using these absolutely beautiful <b>tongs</b> that he's holding in his hand.}
{tongs: The blacksmith looks puzzled, and keeps looking on the floor and on shelves.}
+ Talk to the blacksmith
->talksmith
+ Look around
->looksmith
* {cowman and talksmith} Distract the blacksmith so you can steal the <b>tongs</b>
->tongs
+ Leave
...
->tollbridge

=talksmith
He smiles at you, but looks a little confused. Perhaps he's trying to remember your name. 
+ "Hi!" #CLASS: hero
"Hi... young lady! Good to see you! Everything OK?" #CLASS: smith
+ + "Yep, all good! You?" #CLASS: hero
{tongs: ->tongsgone}
{not tongs: "Yes, all good here! I hear Y... Y.... Your little sister has been causing trouble in town, but she never came in here."}#CLASS: smith
->talksmith
+ {not tongs} "Those <b>tongs</b> are beautiful." #CLASS: hero
"Thank you. They're very strong. I'd wager they could squeeze anything." #CLASS: smith
+ + + "...Fascinating." #CLASS: hero
->smith
+ {cowman and not tongs} "Could you come with me? And bring your tongs?" #CLASS: hero
"No can do! I have SO MUCH forging to do. #CLASS: smith 
And I will be using these <b>tongs</b> aaaaaaaallll day." #CLASS: smith
"I see." #CLASS: hero
->talksmith
+ [End the conversation] "That's all for now." #CLASS: hero
->smith

=tongsgone
"I seem to have misplaced my tongs. You don't think it was your little sister casting spells, do you?" #CLASS: smith
+ [Lie]
"Probably. I'll keep my eye out, see if I can find them for you." #CLASS: hero
->smith

=looksmith
{not tongs: Other than <b>those beautiful tongs</b>, there's not much in here to catch your eye.}
{tongs: Maybe don't linger here too long, or he'll suspect something.}
->smith

=tongs
"LOOK OVER THERE!" #CLASS: hero
He looks over there. 
You steal the tongs. 
+ You now have some tongs in your inventory. #CLASS: getitem
->smith


=tavern 
"The Embarrassing Cucumber" usually has drinkers even in the morning.
But now, everything is <b>very cold</b>. There is a light dusting of snow on the floor.
There is a shivering barman, standing next to a {not icebox:mysterious box}{icebox:'freezer'} that is spitting out snow. 
+ {not barman} [Talk to the barman]
->barman
+ {barman} [Ask the barman what happened again]
->barman
+ {not icebox} [Examine the mysterious box]
->icebox
+ {icebox} [Move over to the 'freezer' again]
->icebox
+ Leave
->townsquare

=barman
"H-H-H-Hello M-Midelle! I-I-I'm afraid I don't have any d-d-d-drinks today!" #CLASS: barman
+ "Why not?" #CLASS: hero
"Well, your si-si-sister has never liked all the dr-dr-drunks, and sh-she came in here and s-s-said a spell: #CLASS: barman
<br>
I wish these people knew this rule: #CLASS: magic
you don't need spirits to be cool! #CLASS: magic
<br>
+ + "And did it make the people cool?" #CLASS: hero
"No, it froze them! Some of them, I had to pour water over their hands to defrost them from the bar!" 
+ + + "So you don't have anything left?" #CLASS: hero
"Nothing! Even though the spell just said "spirits", my beer, wine, ale and mead all vanished!" #CLASS: barman
+ + + + "Yikes! I'm sorry. When I get that Staff back to Eldra, we'll fix this, I promise!" #CLASS: hero
...
->tavern

=icebox
You look at this mysterious box. It looks like your little sister might have magicked it into existence? It's a tall white container, very cold, it has a door in the side, and there's nothing inside but cold air and bits of frosted ice on the sides.
* "I wonder if this might be a new way of keeping things cold all the time?" #CLASS: hero
"We could call it a 'freezer'!" #CLASS: barman
...
->tavern
* {hotmilk} [Cool the milk] You cool the hot cow's milk down in the magical 'freezer'.
->coldmilk
+ "Maybe if we find a way to reverse the spell, you can keep this cold thing?" #CLASS: hero
->tavern

=coldmilk
+ "Hmmmmmm... Cold. Still lilac, but cold." #CLASS: hero
You now have a bucketful of cold cow's milk in your inventory. #CLASS: getitem
...
->tavern


=tollbridge

At the toll bridge, you see <b>a big troll</b>. {not troll: Didn't there used to be a tollman here?} He won't let you pass. 
{milkrequest: "Hey! Did you get me a huge glass of cold cow's milk yet?" } #CLASS: troll
There's some clanking metal noises coming from the <b>blacksmith's forge</b>, next to the toll bridge. 
+ {not troll} [Talk to the troll]
->troll
+ {troll} [Talk to the troll] /*some more]*/ //Also trying removing the new text here if it's only a repeat/recap - I've seen players pulled to click on old options because the option display changed.
->trollmore
+ [Enter the blacksmith's]
->smith
+ Go back to the town square
->townsquare
+ {milkrequest and hotmilk and not coldmilk} You offer the warm bucket of fresh milk you just got to the troll.
->wrongmilk
+ {milkrequest and coldmilk and not trollmilkget} You offer the big bucket of cold milk to the troll.
->trollmilkget
+ {trollmilkget} [Having done everything you want to do in town, you cross the bridge]
->ACT2



=troll
"I complained to your sister that no one was taking me seriously, and no one paid the toll... #CLASS: troll
+ "Oh no, I see where this is going..." #CLASS: hero
"...So she gave me a Blessing: #CLASS: troll
<br>
They mean to pass but not to pay  #CLASS: magic
They can’t with you standing in their way! #CLASS: magic
<br>
...But it went wrong, and turned me into a troll." #CLASS: troll
+ + "Can you let me pass?" #CLASS: hero
->milkrequest
+ + "And how does that make you feel?" #CLASS: hero
->trollfeelings

=trollfeelings

"Honestly? I kind of like it." #CLASS: troll
+ "You do?" #CLASS: hero
"Yeah. Before, everyone would push me around, and barge past without paying. Even the goats would just charge me off the bridge. Now I'm a Figure of Authority." #CLASS: troll
+ +"..."
->trollmore

=trollmore
+ "Can you let me pass?" #CLASS: hero
->milkrequest
+ "How do you feel, being a troll now?" #CLASS: hero
->trollfeelings
+ "Can you tell me what Yolene's Blessing was, again?"
"Sure!" #CLASS: troll
<br>
They mean to pass but not to pay  #CLASS: magic
They can’t with you standing in their way! #CLASS: magic
<br>
...But it went wrong, and turned me into a troll." #CLASS: troll
->trollmore
+ {hotmilk and not coldmilk} [Offer the warm bucket of fresh milk you just got to the troll] You offer the warm bucket of fresh milk you just got to the troll.
->wrongmilk
+ {coldmilk and not trollmilkget} [Offer the big bucket of cold milk to the troll] You offer the big bucket of cold milk to the troll.
->trollmilkget
+ {trollmilkget} [Having done everything you want to do in town, you cross the bridge]
->ACT2
+ "If I have more questions, I'll be back." #CLASS: hero
->tollbridge



=milkrequest
"Now that I'm a troll, I have a real craving for goat's milk. But I guess I could settle for a <b>huge glass of cold COW'S milk!</b>" #CLASS: troll
+ "But I don't have a glass of milk. Can't you just let me past and let me go after my sister?" #CLASS: hero
->nomilk
+ {failedudders and not coldmilk} "There's a big strong cow at the other side of town. If you go there, you can squeeze the teats and get as much milk as you'd like!" #CLASS: hero
->trollstayshere
+ {hotmilk and not coldmilk} [Offer the warm bucket of fresh milk you just got to the troll] You offer the warm bucket of fresh milk you just got to the troll.
->wrongmilk
+ {coldmilk and not trollmilkget} [Offer the big bucket of cold milk to the troll] You offer the big bucket of cold milk to the troll.
->trollmilkget
+ {trollmilkget} [Having done everything you want to do in town, you cross the bridge]
->ACT2
+ [Go back to the edge of the bridge]
...
->tollbridge

=trollstayshere
"Hah! You think you can trick me to leave my post? I'm honestly thinking of LIVING UNDER this bridge now! <br> And anyway, that milk wouldn't be <b> cold!</b>" #CLASS: troll
...
->tollbridge

=nomilk
"Nope! Your sister taught me to stand up for myself, so I am insisting on a toll. Ahem... YOUUUUU... SHALL-NOT.... PASSSSS!!! without paying first."
"Can't I pay coins?"#CLASS: hero
"Do you have coins?" #CLASS: troll
+ "No." #CLASS: hero
->nocoins
+ [Lie] 
->yescoins

=nocoins
"Then no, you can't cross. A huge glass of cold milk, please!"
->trollmore

=yescoins
"Show me the coins."
+ "No."
->nocoins
+ "I don't have them right HERE."
->nocoins

=wrongmilk
The troll takes the bucket.
"Ugh! This milk is warm! Can't you cool it down first?" #CLASS: troll
He hands it back.
->trollmore

=trollmilkget
#CLEAR 
#IMAGE: images/bucket-small.jpg
+ You hand the bucket to the troll.
"Hmmm, I love the colour! And it's nice and cold! Thank you!" #CLASS: troll
"You're... welcome, I guess?"#CLASS: hero
"You're now free to cross the bridge. But, just so you know, if you want to cross BACK again... it's another toll."#CLASS: troll
"What?" #CLASS: hero
"So I recommend you do everything you want to do in town before you cross."#CLASS: troll
+ + [Go ahead and cross] You go ahead and cross the bridge.
->ACT2
+ + [Stay in town a bit longer] You decide to stay in town a bit longer.
...
->tollbridge

=ACT2

#CLEAR

-> TransitionToMineArea
