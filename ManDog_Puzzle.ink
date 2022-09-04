
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
#CLASS: images/HouseintheForest.png
->dogtree

=lookdog

The dog is tied to the tree with a thick rope. The knots look incredibly tight, possibly pulled tighter by the dog. 
"As you can see, I'm in quite the predicament." #CLASS: dogbrainman
+ Where did that voice come from?
->lookforvoice
+ Was that the DOG talking?
->talkdog
+ "Hmmm, what should I do now?" #CLASS: hero
->dogtree


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
+ {not crying} Investigate the crying sound
->crying
+ {worktogether} Talk some more to Yolene
->planwithyolene ->dogtree
+ "Hmmm, what should I do now?" #CLASS: hero
->dogtree


=lookforvoice
You look around.
{not worktogether: There is still the sound of crying from behind the house, but that sounds female, and the voice before was male.}
The tied-up dog is staring at you. 
There is no one in the trees.
+ Was that the DOG talking?
->talkdog
+ Keep trying to get through to the woofing man
->talkman
+ {not crying} Investigate the crying sound
->crying
+ {worktogether} Talk some more to Yolene
->planwithyolene ->dogtree
+ "Hmmm, what should I do now?" #CLASS: hero
->dogtree
->DONE

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
She has tears in her eyes, still.
"I just wanted to prove I could do it. And I COULD! I turned Eldra into a turkey!"
+ + "I saw."
"And I helped the farmer, and I stopped all the drinking in the tavern, and I-"
+ + + "I know, I know! I've been everywhere you've been!"
->worktogether
+ "I just followed the trail of chaos you left behind you." #CLASS: hero
"Chaos? Other than Eldra... and I guess the tavern... I didn't cause any chaos!"
+ + "Yes, you did! Everything's messed up!"
->worktogether

=worktogether

+ Later, I will write this scene better so that you have choices that lead to collaboration. 
+ + There needs to be a "where's the Staff?" question here, but maybe she's too upset to talk properly right now. 
+ + + For now, let's just skip to, Yolene is going to work with you.
+ + + + Back to the front of the house.
{not dogtreeprocess: ->dogtree}
{dogtreeprocess: ->dogtreeprocess}


=planwithyolene
"Yolene, I need your help." #class: hero
+ {talkdog} "Where is the Staff?" 
She explains that the "human" grabbed it in his mouth and ran off. She chased him, but she lost him in the woods, and it took her ages to find her way back here. After an hour of trying and failing to persuade the dog to lead her back there, she's given up.
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
Here the dog talks to you, and you learn the spell that Yolene used to switch the minds of the man and the dog_
<br>
I wish you’d learn to empathise #CLASS: magic
See the world through another’s eyes! #CLASS: magic
<br>
"Dog" also wants to be untied.
+ You also learn at this point that the "human" stole the Staff, and he ran off and Yolene chased him, but the dog doesn't know what happened next.
->dogtreeprocess


=dogtreeprocess
There is a "dog" and a "human".
{not worktogether: there is a crying sound behind the house.}
{worktogether: Yolene is here, looking at you expectantly.}
{not cutrope: The "dog" is tightly tied to the tree.}
{cutrope: The "dog" is free.}
{pocketkey: The "human" trusts you, and will come if you offer a treat.}
{not pocketkey: The "human" is running around like crazy, and staying away from you.}
{houseknife: The house is unlocked, but you don't need to go inside for anything else.}
{doorlocked and not houseknife: The house is locked.}

* {not worktogether} Go investigate the crying sound
->crying
* {houseknife} Use the knife to cut the rope that's tying the dog to the tree
->cutrope
*{cutrope} Get the "dog" to lead you to where the Staff is buried
->staffburied
* {worktogether and learntreats} Get Yolene to help you reach the roof
->treats
+ {treats} Lure the "human" to you with the treats
->pocketkey
+ {worktogether} Talk some more to Yolene
->planwithyolene ->dogtreeprocess
+ Talk more with the dog.
->dogplan
+ Go into the house.
->doorlocked
+ {learntreats} Climb to roof.
->cantclimb
+ {not cutrope} Untie the tight knots tying up the dog
->cantuntie
+ {not treats} Get the "human" to come to you.
->humanignores
+ {pocketkey} Get the "human" to lead you where he buried the Staff.
->doglost

=cantuntie
You pull and pull at the rope, but it's already been pulled way too tight.
The "Dog" tells you that the only way to get it undone now will be to cut it.
+ "I don't have anything to cut it."
"There's <b>a knife</b> just inside the house.
+ + {doorlocked} "The house is locked."
"Where did I put the key? OH! The key is in "my" pocket. The <b>human body pocket</b>."
+ + + "How annoying."
->dogtreeprocess
+ + "How annoying."
->dogtreeprocess

=humanignores
The "human" ignores you.
"Dog" tells you he'll only come with treats.
+ "Where are the treats?"
->learntreats
+ + "How annoying."
->dogtreeprocess
+ Follow the "human" wherever it wants to go
->doglost

=dogplan

Here you learn that the "dog" can smell all sorts of things you've interacted with earlier in the day... wet laundry, a turkey, milk, etc.
+ That keen sense of smell might be useful.
Here you also ask about how to calm down the over-excited "human" and/or get his attention.... 
+ + with dog treats...
->learntreats
+ + {doglost} You can ask the "dog" if he knows of anywhere where there is strong-smelling black sludge near here.
He doesn't know where, but wow, that smell is strong to his dog nose. If he were free, he could lead you to it, for sure.
+ + + "OK, I'll have to get you free then.
->dogtreeprocess


->DONE
= learntreats
You learn that the dog treats are on the roof.
+ "Don't you have a ladder?"
"The ladder is inside the house."
+ + {doorlocked} "The house is locked."
"Where did I put the key? OH! The key is in "my" pocket. The <b>human body pocket</b>."
+ + + "How annoying."
->dogtreeprocess
+ +"How annoying."
->dogtreeprocess


=doorlocked
What is it with countryside people and locking their houses? Are they so afraid of adventurers taking stuff?
+ Look under the doormat
->notthere ->doorlocked
+ Look in the bushes
->notthere ->doorlocked
+ "Maybe the "dog" can tell me where to find a key."  
->dogtreeprocess
* {pocketkey} Unlock and enter the house.
->houseknife

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
{treats: You already have enough doggy treats, there's no reason to climb up again.}
+ "Hmmmm."
->dogtreeprocess

=pocketkey
The "human" comes over to you for a treat, and sits on the floor. 
You give the human a doggy treat.
+ You get <b>the house key</b> out of the "human"'s pocket. 
->dogtreeprocess


=doglost
The "human" comes over to you for a treat, and sits on the floor. 
You give the human a doggy treat, and it runs off to play.
The "human" leads you through the woods, but he clearly is just playing, and doesn't seem to be leading you to where the Staff is buried.
He wants to play "shake" with you, and his hands are covered in <b>a strong-smelling black sludge</b>, but you don't see any pools of black sludge anywhere.
->dogtreeprocess
->DONE

=treats
You get Yolene to climb on your back, and stand up tall so she can reach the roof.
She gets the doggy treats, and hands them to you.
+ You have the doggy treats!
->dogtreeprocess

=staffburied
You, the "dog", Yolene and the "human" head through the woods. The "dog" leads the way, sniffing, to a pool of sludge. Floating on the surface is the Staff of Power!
+ Take the Staff
->endgamespellsstart
