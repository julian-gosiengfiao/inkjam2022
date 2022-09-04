=mandogpuzzlestart
The sun is starting to set. It's been a long day.
You continue down the path. In the distance, you hear a girl crying.

Considering your day, it's seems pretty likely your sister passed this way.
+ [Head towards the crying] You head towards the crying.
->dogtree

=dogtree
{not dogtree_first: ->dogtree_first }

{dogtree_first}:
You are standing in front of a house, next to a big oak tree.
There is <b>a large dog</b>, tightly tied to the tree.
There is <b>a muddy-looking man</b> who is running circles around the tree and often falling over.
{not worktogether: Behind the house, <b>someone is crying</b>.}
{worktogether: Yolene is looking at you, hoping you'll figure out with a plan.}

+ {not talkdog} Look at the dog
->lookdog
+ {not talkdog} Talk to the running man
->talkman
+ {not crying} Investigate the crying sound
->crying
+ {worktogether} Talk some more to Yolene
->planwithyolene ->dogtree
+ [Admire the view some more]
->dogtree_first


=dogtree_first
#CLEAR

#CLASS: /images/HouseInTheForest.png
+Pretty.
->dogtree

=lookdog
The dog is tied to the tree with a thick rope. The knots look incredibly tight, possibly pulled tighter by the dog. 
"As you can see, I'm in quite the predicament." #CLASS: dogbrainman
+ Where did that voice come from?
->lookforvoice
+ Was that the DOG talking?
->talkdog
+ {not crying} Investigate the crying sound
->crying
+ Try talking to the man instead
->talkman

=talkman

"Hello! Are you OK? Why are you running around the tree like that?" #CLASS: hero
"WOOF!!" #CLASS: dogbrainman
Did my sister make you unable to talk? #CLASS: hero
"WOOF! WOOF!" #CLASS: dogbrainman
"It's actually a modicum more complex than that, I'm afraid." #CLASS: dogbrainman
+ Where did that voice come from?
->lookforvoice
+ Was that the DOG talking?
->talkdog
+ {not crying} Investigate the crying sound instead
->crying
+ Look more closely at the dog instead
->lookdog


=lookforvoice
You look around.
{not worktogether: There is still the sound of crying from behind the house, but that sounds female, and the voice before was male.}
The tied-up dog is staring at you. 
There is no one in the trees.
+ Was that the DOG talking?
->talkdog
+ Keep trying to get through to the woofing man
->talkman
+ {not crying} Investigate the crying sound instead
->crying


=crying

You go round the back of the house to discover...
+ YOLENE! 
She's sitting on a rock, starting at the muddy ground, and weeping.
+ + "Yolene! I've finally caught up with you! Are you OK?" #CLASS: hero
->yolenetalk
+ + "Yolene! You have caused SO MUCH TROUBLE!" #CLASS: hero
->yolenetalk


=yolenetalk
At the sound of your voice, she looks up.
"Midelle! You're here! How did you find me?" #CLASS: littlesis
+ "Never mind that now! You've got some explaining to do!" #CLASS: hero
->sadyolene
+ "I came after you! I was worried... and maybe Eldra was too?" #CLASS: hero
->caringyolene1
+ "I just followed the trail of chaos you left behind you." #CLASS: hero
"Chaos? Other than Eldra... and I guess the tavern... I didn't cause any chaos!" #CLASS: littlesis
+ + "Yes, you did! Everything's messed up!" #CLASS: hero
->sadyolene
+ + "You might THINK you were helping those people, but really you were making a LOT of problems." #CLASS: hero
->sadyolene

=sadyolene
She has tears in her eyes, still.
"I just wanted to prove I could do it. And I COULD! I turned Eldra into a turkey!" #CLASS: littlesis
+ + "I saw." #CLASS: hero
"And I helped the farmer, and I stopped all the drinking in the tavern, and I-" #CLASS: littlesis
+ + + "I know, I know! I've been everywhere you've been!" #CLASS: hero
"Oh. And it's chaos?" #CLASS: littlesis
+ + + + "I... guess it's not that bad. Some people are happy." #CLASS: hero 
->caringyolene2
+ + + + "Total chaos. Now - give me the Staff back so I can fix everything." #CLASS: hero
->floodsoftears

=floodsoftears
You've made Yolene too sad. She bursts into a flood of tears.
+ You might have to give her a minute.
->waitaminute

=caringyolene1
"You... you were worried about me?" #CLASS: littlesis
+  "Of course!" 
->worktogether

=caringyolene2
 "So... I did help people with my Blessings? #CLASS: littlesis
+ "Some of them, yes".
->worktogether


=waitaminute
...
+ ...
"(sniff)" #CLASS: littlesis
+ + wait a little longer 
->waitaminute
+ + "I'm sorry I was mean to you. Are you OK?" #CLASS: hero
"(sniff) Yeah. I'm fine. (sniff) #CLASS: littlesis
* * * "Eldra and I were worried about you." #CLASS: hero
"About me? Or about the Staff?" #CLASS: littlesis
+ + + + "You, of course!" #CLASS: hero
->worktogether
+ + + + "Mostly the Staff." #CLASS: hero
->floodsoftears
+ + + "You really did some great magic today." #CLASS: hero
->caringyolene2

=worktogether
Yolene looks cheerier now. She stands up, and dusts herself off.
+ She'll probably be a bit more helpful, now.
{not dogtreeprocess: ->dogtree}
{dogtreeprocess: ->dogtreeprocess}


=planwithyolene
"How can I help?" #class: littlesis
+ {talkdog} "So, where's the Staff of Power, Yolene?" #CLASS: hero
"Oh. The dog took it. Well, the man, with the dog's mind. I'll explain." #class: littlesis
+ + "Go on." #CLASS: hero
"So, that poor dog was all tied up it couldn't get free, and the man didn't seem to care that he was barking and barking. He was probably thirsty too, and there was no water." #class: littlesis
+ + + "So you did another Blessing?" #CLASS: hero
"So I did another Blessing. This one was: #class: littlesis
<br>
I wish you’d learn to empathise #CLASS: magic
See the world through another’s eyes! #CLASS: magic
<br>
+ + + + "And then what happened?"
"Well, the dog mind was happy to be free, but he thought I was playing fetch! He grabbed the Staff of Power and ran off into the woods! I chased him, but I got lost, and it took me ages to get back. When I got back, the dog mind was already back, but he won't lead me back to the Staff!"
+ + + + + {not treats} "Right. So we need to get the dog mind on our side."
->->
+ + + + + {pocketkey} "But even when the dog mind trusts us... he doesn't know where he dropped it."
"Oh no! I guess he usually remembers his way by smell?"
+ + + + + + "Maybe..."
->->
+ {not cutrope} "How can I get the "dog" free?" #class: hero
"The rope is way too tight at this point. You'll have to cut that rope."
+ + "Do you have anything sharp?"
"No, nothing. Maybe there's a knife in the house?"
->->
+ {doorlocked and not pocketkey} "How do I get into the house?"
"It's too solid a door to knock down. You'll have to find a key. Though I have no idea where."
->->
+ "Never mind, I'll figure it out myself."
->->


=talkdog
"Ah, yes. You've understood. I am the one speaking. In this doggy body. I do apologise for my nudity."
+ {worktogether} "Yes, my sister explained. She switched your minds?"
->dogspell
+ {not worktogether} "You're... was this my younger sister? With a big magical staff?"
->dogspell

=dogspell
"That is it, in a nutshell, yes, you've understood. She didn't take kindly to my dog being tied up here, and cast a magical enchantment upon us both. I believe the words she used were:"
<br>
I wish you’d learn to empathise #CLASS: magic
See the world through another’s eyes! #CLASS: magic
<br>
+ "Wow. She's done so many spells today."
"After which, my body, possessed by my pet, stole the aforementioned Staff, and ran away. Your sister endeavoured to give chase, but alas, without success. I'm sure she can explain further."
+ + "..."
"Now, if it is not too much trouble... could you free me from this tree?"
+ + + "I can try."
->dogtreeprocess


=dogtreeprocess
...
There is a "dog" and a "human".
{not cutrope: The "dog" is <b>tightly tied</b> to the tree.}
{cutrope: The "dog" is <b>free</b>.}
{not pocketkey: The "human" is running around like crazy, and <b>staying away from you</b>.}
{pocketkey: The "human" trusts you, and <b>will come</b> if you offer a treat.}
{not worktogether: there is a <b>crying sound</b> behind the house.}
{worktogether: <b>Yolene</b> is here, looking at you expectantly.}
{houseknife: The house is <b>unlocked</b>, but you don't need to go inside for anything else.}
{doorlocked and not houseknife: The house is <b>locked</b>.}
+ Talking to someone might help.
->talkscreen
* {not worktogether} Go and investigate the crying sound
->crying
+ Go into the house
->doorlocked
+ {learntreats and not treats} Climb up to the roof to get the doggy treats
->cantclimb 
* {worktogether and learntreats} Get Yolene to help you reach the roof
->treats
+ {not cutrope} Untie the tight knots tying up the dog
->cantuntie
* {houseknife} Use the knife to cut the rope that's tying the dog to the tree
->cutrope
* {treats} Lure the "human" to you with the treats
->pocketkey
+ {pocketkey} Try to get the "human" to lead you to wherever he's hidden the Staff.
->doglost
*{cutrope} Get the "dog" to lead you to where the Staff is hidden
->staffburied
+ {not treats} Persuade the "human" to come to you see if there are any clues
->humanignores

=mansludgenotrust
->dogtreeprocess

=cantuntie
You pull and pull at the tightly tied rope, but it's already been pulled way too tight.
"Ahh, I was afraid of this. I strongly recommend you cease that endeavour, and instead venture to <b>cut the rope with a knife.</b> 
+ "I don't have anything to cut it."
"I have any number of perfectly serviceable knives in my house. Indeed, there is <b>a knife</b> just beyond the threshold.
+ + {doorlocked} "The house is locked."
"Where did I put the key? OH! The key is in "my" pocket. The <b>human body pocket</b>."
+ + + "How annoying."
->dogtreeprocess
+ + "How annoying."
->dogtreeprocess

=talkscreen
This is quite a puzzle. Perhaps you're missing some key information, or someone intelligent might be able to help.
+ Learn more about this situation from the "dog".
->dogplan
+ {worktogether} Talk some more to Yolene
->planwithyolene ->dogtreeprocess
+ {not treats} Talk to the "human"
->humanignores


=humanignores
The "human" ignores you.
The "man" is clearly very muddy, but he doesn't trust you, and won't come close enough to inspect.
+ "I'll have to gain his trust."
->dogtreeprocess



=dogplan
"You wish to speak with me? I apologise for the gruff tone, I am unused to these vocal chords." #CLASS: manbraindog

+ {doorlocked} "How can I enter the house? 
"Yes, please do not try to force the door open. <b>A key</b> will do the trick.
+ + "And where can I find a key?"
"Where did I put the key? OH! The key is in "my" pocket. The <b>human body pocket</b>."
+ + + "How annoying."
->dogtreeprocess
+ {humanignores} "How can I get that dog-brain to trust me and come closer?"
"I admit, he is poorly trained. My apologies. And having my body has made him... quite excitable. However, a judicious application of <b> doggy treats</b> will have him, literally and figuratively, eating out of your hand, as it were."
* * "Where are the treats?"
->learntreats
+ + {learntreats} And remind me where the treats are?
->learntreats
//NOTE: Still need more fixing here. 
+ + {doglost} "Do you know where I can find a <b>strong-smelling black sludge</b> near here?
+ + + {cutrope} ->leadtheway
He doesn't know where, but wow, that smell is strong to his <b>dog nose</b>. If he were free, he could lead you to it, for sure.
+ + + "OK, I'll have to get you free then.
->dogtreeprocess


Here you learn that <b>the "dog" can smell all sorts of things</b> you've interacted with earlier in the day... wet laundry, a turkey, milk, etc.
+ That keen sense of smell might be useful.
+ + "What else can you tell me that's helpful, here?"
->doghelp


=doghelp
"Perhaps, yes, it would be wise of me to lay out all of the pieces here, for you."
"Your wilful younger sister has switched my mind and that of my dog, perhaps as punishment for keeping the poor hound tied up."
"My foolish dog, in my body, has stolen your Staff of Power, and hidden it goodness knows where in these woods."
{not cutrope} "I am tied up, and that rope may very well be too tight to untie."
{doorlocked and not pocketkey} "My dog usually responds to doggy treats. However, I keep the doggy treats out of reach, on the roof, and I usually get them with a ladder. Unfortunately, the ladder is in my house, and my house is locked, and the only key I have... is in the pockets of the trousers of my body... who will not listen to you without treats! QUITE THE PREDICAMENT INDEED!" 
"Thank you for keeping track of the problems." #class: hero
->dogtreeprocess


= learntreats
"Ahh, yes. Well you see, my dog... This dog body is quite large. And everywhere I put the treats, my dog would find and eat them."
+"Clever boy."
"Indeed. Until I hit upon the marvellous solution of secreting them on the roof. Ingenious, no?"
+ + "But how do you reach the roof?"
"With a ladder that I keep in the house."
+ + + {doorlocked} "The house is locked."
"Where did I put the key? OH! The key is in "my" pocket. The <b>human body pocket</b>."
+ + + + "How annoying."
->dogtreeprocess
+ + + "How annoying."
->dogtreeprocess


=doorlocked
What is it with countryside people and locking their houses? Are they so afraid of adventurers taking stuff?
* {pocketkey} Unlock and enter the house.
->houseknife
+ {not pocketkey} Look under the doormat
->notthere ->doorlocked
+ {not pocketkey} Look in the bushes
->notthere ->doorlocked
+ {not pocketkey} "Maybe the "dog" can tell me where to find a key."  
->dogtreeprocess

=notthere
It's not there.
+"Hmmm."
->->

=houseknife
Just inside the house, on the kitchen table, is <b>a knife</b> that looks like it would be good at cutting ropes.
+ Take the knife and leave
->dogtreeprocess

=cutrope
You cut the rope. The dog is free!
"Hooray!"
+ "Hooray!"
->dogtreeprocess

=cantclimb
{not treats: You can't climb. Too difficult. You need a way of getting higher up.}
+ "Hmmmm."
->dogtreeprocess

=pocketkey
The "human" comes over to you for a treat, and sits on the floor. 
+ [Give the "human" a doggy treat] You give the human a doggy treat.
In his excitement at receiving a treat, he spins around with joy. 
As he does so, a <b>the house key</b> flies out of his trouser pocket.
+ + [Catch it!] 
You caught it. You now have <b>the house key</b>. 
->dogtreeprocess

=doglost
The "human" comes over to you for a treat, and seems to want you to follow it. 
+ [Give the "human" a doggy treat] You give the "human" a doggy treat, and it runs off to play.
The "human" leads you through the woods, but he clearly is just playing, and doesn't seem to be leading you to where he hid the Staff.
->mansludge

=mansludge 
He wants to play "shake" with you, and his hands are covered in <b>a strong-smelling black sludge</b>.
+ Search for a place nearby with this black sludge. Maybe the Staff is there?
For all your searching nearby, don't see any pools of black sludge anywhere. 
+ + "It's hopeless. I'll never find a black sludge pool in this wood by myself. There must be another way."
->dogtreeprocess
+ "Ugh, don't get those slimy hands on my clothes!"
->dogtreeprocess


=treats
You get Yolene to climb on your back, and stand up tall so she can reach the roof.
She gets the doggy treats, and hands them to you.
+ You have the doggy treats!
->dogtreeprocess

=leadtheway
"Why, not by using my mind, good lady witch, no. BUT, if I follow this little dog NOSE, I can lead you there immediately. Shall we?"
+ "Yes."
->darker
+ "Not yet."
->dogtreeprocess 


=staffburied
...
With the "dog" freed, he assures you that he can follow the trail of the black sludge smell to wherever the "human" has been, and hopefully therefore, to the Staff of Power.
+ Follow the dog through the woods.
->darker

=darker
It is starting to get darker, as you, the "dog", Yolene and the "human" head through the woods. 
The "dog" leads the way, sniffing, to a pool of sludge. Floating on the surface is...
+ + "the Staff of Power!"
+ + + [Take the Staff]
->takestaff

=takestaff
You take the Staff of Power!
"Finally! With this, I'm sure Eldra can undo all the Blessings you've cast today!" #class: hero
"All of them? Even the ones that made people happy?" #class: littlesis
"Yes. Sorry. Even them. Best to do these things slowly and carefully, I think." #class: hero
"Midelle! Look over there!"
Yolene points to the horizon.
+ [Look (while holding onto the Staff tightly)]
->endgamespellsstart
