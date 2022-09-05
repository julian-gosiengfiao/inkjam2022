->endgamespellsstart

=endgamespellsstart
#CLEAR 
You see a red signal flare in the sky! #CLASS: redtext
+ "Oh no! That means the town is under attack!" #CLASS: hero
"You can take my horse if you want to speed back to town. It's over there!" #CLASS: manbraindog
The dog points to a horse that is much more loosely tied to another tree. 
+ + "Quick, Yolene! Untie it!" #CLASS: hero
->horsetooslow

=horsetooslow

You and your sister are standing in front of quite a <b>small, feeble horse</b>. It is eating a <b>flower</b>.
"We'll never both fit on here!" #CLASS: littlesis
"And it'll be far too slow even if we do!" #CLASS: hero
"We won't make it back in time! The town is doomed!" #CLASS: littlesis
->choices

=choices
* Panic
->panic ->choices
* Tell Yolene to stay behind
->staybehind ->choices
* Search the sky for giant eagles
->eagles
+ Check your inventory 
->emergencyinventory

=panic
You hyperventilate for a minute.
It does not help that Yolene is watching you hyperventilate, and telling you that everyone is depending on you.
+ Ahh!
->->

=staybehind
"No way! And anyway, even if I did, that horse has far <b>too few muscles</b> to carry you all the way home!" #CLASS: littlesis
+ Ahh!
->->

=eagles
It's too late in the evening for eagles.
+ Bats, then!
It's too early for bats.
+ + Ugh, <i> dusk </i>.
->choices

=emergencyinventory

The Staff of Power! #CLASS: magic
You hold it in your hands and feel a rush of magical power flowing through you, making your long hair billow in non-existent wind. Your eyes sparkle, and you lightly glow in a rainbow haze.
+ It’s all a bit much. 

But what spell could you possibly use to get home quickly? You never had a brain for spellmaking... 
+ + ... but you've always had an excellent memory for details!
->spell1race

=spell1race
What spell could you chant?
* Chant the Cleaning Clothes spell
->wrongspell ->spell1race
+ Chant the Muscular Cow spell
->fasthorse
+ Chant the Disco spell
->wrongspell ->spell1race


=wrongspell
{&No! That spell isn't going to help here! And you're running out of time! | A second wrong spell! Eesh! And you're running out of time! |OH NO! You keep trying to cast unhelpful spell! And you're REALLY running out of time! |OH NO! ONE MORE SCREW UP AND YOU'RE TOAST! |->gameover }
...
->->

=gameover
Unfortunately, you ran out of time. The town, Eldra, Bessie the cow... they are all doomed. 

GAME OVER

Restart from the Red Warning Flare? 
+ YES
->endgamespellsstart
+ NO 
->theend

=fasthorse
#CLEAR
Ahem... I hope this works... #CLASS: hero
“I wish this beast that eats a flower #CLASS: magic
Would gain a most tremendous power!” #CLASS: magic

The horse grows and grows into A MIGHTY WARHORSE, with a broad back and calves to die for.
#IMAGE: images/horse-small.jpg
+"Let's go!" #CLASS: hero
->racehome

=racehome

Your borrowed <b>mighty warhorse</b> gallops back through the woods, through the foamy mines, past the light-house, and rushes all the way down the road to the toll bridge. 
The troll is standing there, looking scared and anxious, but still blocking the bridge.
+ [LEAP over the troll's head!]
You do the <b>"Hyah!"</b> thing with the reins, and the warhorse speeds up and LEAPS over the troll's head!
"I'm too scared to do anything! Go save our town!" #CLASS: troll
+ + Charge through the centre of town,
out the other side,
+ + + and head for the border wall behind your home!
<b>"Hyah Again!"</b> #CLASS: hero

->villainarrives

=villainarrives
...
You <b>burst</b> into the clearing behind your home. 
24 hours ago, a single Gorgon Eye was here, causing chaos.
Now it's looking much...
+ ...<b>much</b>...
<b>worse</b>.

From your hilltop viewpoint, you can see an <b>army of skeletons</b> marching up towards the gate. 
Behind them, a second army of GHOST SKELETONS!
+ + <i>(how does THAT work?)</i>
And riding a young red dragon over their heads, 
+ + + is <b>KRRANDORRRR-GUZZANNA[!]</b>, THE GREAT (AND VERY EVIL) GOBLIN NECROMANCER!!
+ + + + <i> who? </i>
<i> (OK, so this was never really explained. She's a goblin necromancer. She's very evil and hates you. Don't worry about it.) </i>
+ + + + + She casts a spell to amplify her voice, and it booms through the town:

"BWAHAHAHAHAHAHA! THERE IS NOTHING YOU CAN DO TO STOP ME NOW, FEEBLE WITCHES!" #CLASS: necromancer 
->response

=response
+ "Oh yeah? Well <b>we</b> beg to differ!" #CLASS: hero
->canthear
+ "Eldra beat you once, and now <b>we'll</b> take you down!" #CLASS: hero
->canthear
+ "Ahhhhh! Oh noooo!!! We're dooooooomed! Someone save us!" #CLASS: hero
->canthear


=canthear
"I CAN'T HEAR YOU, SILLY YOUNGER WITCHES! WITHOUT ELDRA HOLDING THE STAFF, YOU ARE POWERLESS TO STOP ME! AND NOW YOU WON'T EVEN SEE YOUR END COMING! BWAHAHAHAHAHAHA!!! #CLASS: necromancer 
Having finished her evil laugh, Ingrid Evil raises her <b>Wand of Wickedness</b> over her head, and chants a spell:

"They think their bite's worse than their bark #CLASS: magic
Let them suffer IN THE DARK!" #CLASS: magic

+ And suddenly, the whole world is pitch black!
->spell2dark 

=spell2dark
#CLEAR
What should you do? You can hear the army getting closer!
* Fumble for your white sock!
->droppedit ->spell2dark
* Chant the Troll Spell!
->wrongspell ->spell2dark
* Chant the Man and Dog spell!
->wrongspell ->spell2dark
+ Chant the Barrel Man Spell!
->lightdispell

=droppedit
You pull out the sock, and a little of the darkness that surrounds you flees from the sock... 
+ but not enough. You need something <b>stronger</b>.
->->

=lightdispell
I think this one will fix this! #CLASS: hero
Why must this idiot be so whiny? #CLASS: magic
Let everything be clean and shiny! #CLASS: magic

And with a burst of <b>golden light</b>, the magical darkness is instantly dispelled!

"WHAT?? HOW DID YOU DO THAT??" #CLASS: necromancer 
+ "I've been bringing light to dark spaces ALL DAY!"
->canthear2
+ "Honestly, it's a really lucky break! It's a coincidence!"
->canthear2
+ "Why should I bother responding? You can't hear me from all the way over there."
->canthear2

=canthear2
"I STILL CAN'T HEAR YOU! I HOPE WHAT YOU'RE SAYING IS JUST BEGGING FOR MERCY!" #CLASS: necromancer 

And the necromancer launches a bolt of dark energy at the town gates, <b>blowing the gates away</b>, and leaving <b>clear passage</b> for her army to enter the town.

+ But wait - what's that?
Standing in the dust and rubble of the gateway, gibblets high and defiant, is a little <b>turkey</b>!
+ + "Eldra!" #CLASS: hero
"What are you doing, Eldra! It's too dangerous!" #CLASS: littlesis
->spell3defence

=spell3defence
What can you do to help?
+ Chant the Troll spell.
->megaturkey
*  Chant the Disco spell.
->wrongspell ->spell3defence
* Chant the No Alcohol Spell.
->wrongspell ->spell3defence

=megaturkey
"I mean... you're already under ONE spell, so..." #CLASS: hero

"They mean to pass but not to pay, #CLASS: magic
They can’t with you standing in their way!" #CLASS: magic

As you finish the spell, you see that brave little turkey get <b>bigger</b>...
+ ... and bigger...
... until it fills the gateway with monstrous brown feathers.
+ +  The mindless skeleton army still charges -
- and get crushed under giant talons, and pecked by a giant beak!
+ + + Soon, there's just a big pile of unanimated bones, that Eldra keeps pecking at.

"WHAAAATT? MY ARMY? HOW COULD YOU?" #CLASS: necromancer 
+ + + + say nothing
->canthear3
+ + + + "Yolene? I can't think of a comeback. Can you?" #CLASS: hero
->canthear3
+ + + + "HONESTLY, THIS IS ALL JUST REALLY LUCKY COINCIDENCES!" #CLASS: hero
->canthear3

=canthear3
"I'M SURE YOU'RE RESPONDING, BUT IT'S VERY WINDY UP HERE!"
+ Ugh
"DO YOU THINK YOU'VE STOPPED ME? MY SPECTRAL SKELETON ARMY CAN GO STRAIGHT THROUGH THE WALLS!" #CLASS: necromancer 
+ + "Skeleton Ghosts still really don't make sense." #CLASS: hero 
But they are there! Emerging like smoke through the wall uphill of MegaTurkey Eldra, <b>skeleton sprits</b> holding spectral <b>flaming torches</b> CHARGE towards you! 
+ + + You only have a moment to prepare!
->spell4spirits

=spell4spirits
Could a spell save you yet again?
* Chant the Sleeping spell
->wrongspell ->spell4spirits
+  Chant the Frozen Tavern spell
->spiritsbegone
*  Chant the Body Swap spell
->wrongspell ->spell4spirits

=spiritsbegone
"I mean, this one takes a bit of creative license..." #CLASS: hero
I wish these sillies / people knew this rule: #CLASS: magic
You don’t need <b>spirits</b> to be cool! #CLASS: magic

+ And with a gust of chilly wind...
The skeleton spirits transform into delicate snowflakes, that flutter gracefully to the floor.

"WHAAAT???? MY OTHER ARMY TOO? HOW CAN THIS BE????" #CLASS: necromancer 

+ + And the necromancer flies her dragon over the gate[,] landing directly in front of you.
->monologue

=monologue
"Well, then, witches, it is true that your power is strong, but I!! I!!! have studied the dark goblin arts of necromancy for one hundred years! I-" #CLASS: necromancer 
+ Yolene elbows you in the back.
You glance over at her.
She winks at you with a big grin on her face, and then looks pointedly at the Staff of Power in your hands.
->spell5sleep

=spell5sleep

{& "... and it was prophesied by my mother that I was DESTINED to rule over ALL..." |"... my shadowy powers have grown stronger with each passing..." | "You cannot begin to comprehend the start of understanding the commencement of..."|"Soon, all the world shall be dominated by goblinkind! You shall RUE THE DAY THAT..."|"...and he patted me on the head and said, "Not bad, sport", which I have always taken to mean... | ...This dragon alone cost 6,000 gold coins, and it's a rental, so I have to make sure it..."} #CLASS: necromancer

+ Listen to the monologue a little longer
->spell5sleep
* Twirl the Staff of Power impressively in your hands and ready one last mighty spell!
->spell5sleep
* Hold Yolene's hand and join your powers!
->spell5sleep
* Put your sunglasses on
->spell5sleep
*  Chant a spell about how you wish we could all just get along
->wrongspell ->spell5sleep
* Channel all your magical energy into the tip of the Staff...
->spell5sleep
+ Chant the Sleep Spell your sisters accidentally invented last night!
->defeat

=defeat
#CLEAR
“You ALWAYS think that you know best! #CLASS: magic
For goodness’ sake, give it a REST!” #CLASS: magic
#image: images/Staffexplode-small.jpg
+ PYEWWWWWWWHWHWHWHW! #CLASS: magic

<b> A beam of blinding light </b> shoots  out of the Staff of Power, knocking the Goblin Necromancer flying through the sky, and landing with a <b>THUD</b> on your cabbage patch.
...
+ + ...
...
The young red dragon looks around for a second, and then decides it's done, and flies away.
...
+ + + ...
<b>Monster Turkey Eldra</b> thuds over to you, and looks down at you appreciately.
"YOU DID IT!" #CLASS: bigsis
+ + + + "WE did it." #CLASS: hero
->1lastspell
+ + + + "I couldn't have done it alone." #CLASS: hero
->1lastspell
+ + + + "I did! Thanks for your help, though!" #CLASS: hero
->1lastspell


=1lastspell

"... But I don't know how to undo all this magic! I don't know how to turn you back into yourself, or end any of these <b>Blessings Gone Wrong</b>!" #CLASS: hero
"But I do! I've studied for years, and I have the experience, and I can return everything to normal. I just... can't hold the Staff like this!" #CLASS: bigsis
+ Yolene nudges you again [.]
"You can do this. And you can trust Eldra. She really is looking out for us, after all." #CLASS: littlesis
+ + Chant one last spell... the Man/Dog Spell...
->switch

=switch
With your pretty little sister and giant turkey older sister in front of you, you close your eyes and softly chant:
I wish you’d learn to empathise #CLASS: magic
See the world through another’s eyes! #CLASS: magic

Eldra's mind enters Yolene's body.
Yolene's mind enters Eldra's body.
And "Yolene" reaches forward to take the Staff into her hands.
+ You hand it to her [,] and she sings a beautiful chant. Onward the tune rolls, as the rainbow glow that surrounds her begins to spread like a wave...
... a wave that floats over a bulky cow and an icy tavern...
+ + across a lonely bridge...
...through a glowing house and under a disco mountain...
... and all the way to a distant hill where a man and dog are happily playing together...
+ + + and just like that... [] your sisters are <b>back in their bodies</b>...
... and reaching forward to pull you into <b>a warm hug</b>.
->thegoodend

=thegoodend

# CLASS: end
The End
CONGRATULATIONS!

->theend

=theend

THANK YOU FOR PLAYING!

+ Go to Credits 
->credits ->theend
+ Go to Achievements Menu
->achievements ->theend
+ Play again from the beginning
->restart ->theend


=credits

We made it! 

->->

=achievements

Unlocked!
Still to Find!

->->
=restart
BACK TO BEGINNING
->DONE
