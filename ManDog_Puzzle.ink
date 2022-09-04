=mandogpuzzlestart
The sun is starting to set. It's been a long day.
You continue down the path. In the distance, you hear a girl crying.

Considering your day, it's seems pretty likely your sister passed this way.
+ Head towards the crying.
->dogtree

=dogtree

You are standing in front of a house, next to a big oak tree.
Tied to the tree is a dog.
Running circles around the tree is a man who keeps falling over.
{not worktogether: Behind the house, someone is crying.}
{worktogether: Yolene is looking at you, hoping you'll figure out with a plan.}

+ {not talkdog} Look at the dog
->lookdog
+ {not talkdog} Talk to the running man
->talkman
+ {not crying} Investigate the crying sound
->crying
+ {worktogether} Talk some more to Yolene
->planwithyolene ->dogtree


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
"Mideline! You're here! How did you find me?" #CLASS: littlesis
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

Later, I will write this scene better so that you have choices that lead to collaboration. 
There needs to be a "where's the Staff?" question here, but maybe she's too upset to talk properly right now. 
For now, let's just skip to, Yolene is going to work with you.
+ Back to the front of the house.
->dogtree

=planwithyolene
{talkdog: Here you can ask Yolene what happened when she raced off after the dog. She explains that she lost the DogMan, and it took her ages to find her way back here, and after trying and failing to persuade the dog to lead her back there, she's given up.}
I need more options here.
->->


=talkdog
Here the dog talks to you, and you learn the spell that Yolene used to switch the minds of the man and the dog.

I wish you’d learn to empathise #CLASS: magic
See the world through another’s eyes! #CLASS: magic


Once you've learnt this, you go to the Stage 2 Puzzle Hub
You also learn at this point that the "human" stole the Staff, and he ran off and Yolene chased him.
->dogtreeprocess


=dogtreeprocess
This is the space for maybe still learning some things, but it's also the hub for Problem Solving

* {houseknife} Use the knife to cut the rope that's tying the dog to the tree.
->cutrope
*{cutrope} Get the "dog" to lead you to where the Staff is buried.
->staffburied
* {worktogether and learntreats} Get Yolene to help you reach the roof.
->treats
+ {treats} Lure the dog to you with the treats.
->pocketkey
+ {worktogether} Talk some more to Yolene
->planwithyolene ->dogtreeprocess
+ Talk more with the dog.
->dogplan
+ Go into the house.
->doorlocked
+ {learntreats} Climb to roof.
->cantclimb


=dogplan

Here you learn that the "dog" can smell all sorts of things you've interacted with earlier in the day... wet laundry, a turkey, milk, etc.
+ Here you also ask about how to calm down the over-excited "human" and/or get his attention 
->learntreats
+ {doglost} You can ask the "dog" if he knows of anywhere where there is strong-smelling black sludge near here.
He doesn't know where, but wow, that smell is strong to his dog nose. If he were free, he could lead you to it, for sure.
+ + "OK, I'll have to get you free then.
->dogtreeprocess


->DONE
= learntreats
You learn that the dog treats are on the roof.
->dogtreeprocess

=doorlocked
What is it with countryside people and locking their houses? Are they so afraid of adventurers taking stuff?
+ Think some more
->dogtreeprocess
* {pocketkey} Unlock and enter the house.
->houseknife

=houseknife
Just inside the house, on the kitchen table, is a knife that looks like it would be good at cutting ropes.
+Take the knife and leave
->dogtreeprocess

=cutrope
You cut the rope. The dog is free!
->dogtreeprocess
->DONE


=cantclimb
You can't climb. Too difficult. You need a way of getting higher up.
->dogtreeprocess

=pocketkey
+ You get the key out of the "human"'s pocket. 
->dogtreeprocess
+ Get the "human" to lead you where he buried the Staff.
->doglost

=doglost

The "human" leads you through the woods, but he clearly is just playing, and doesn't seem to be leading you to where the Staff is buried.
He wants to play "shake" with you, and his hands are covered in a strong-smelling black sludge, but you don't see any pools of black sludge anywhere.
->dogtreeprocess
->DONE

=treats
You have the doggy treats
->dogtreeprocess

=staffburied
You, the "dog", Yolene and the "human" head through the woods. The "dog" leads the way, sniffing, to a pool of sludge. Floating on the surface is the Staff of Power!
+ Take the Staff
->endgamespellsstart

->END
