=endgamespellsstart

You see a red signal flare in the sky!
+ "Oh no! That means the town is under attack!" #CLASS: hero
"You can take my horse if you want to speed back to town. It's over there!" #CLASS: manbraindog
The dog points to a horse that is much more loosely tied to another tree. 
+ + "Quick, Yolene! Untie it!" #CLASS: hero
->horsetooslow

=horsetooslow

You and your sister are standing in front of quite a small, feeble horse. It is eating a flower.
"We'll never both fit on here!" #CLASS: littlesis
"And it'll be far too slow even if we do!" #CLASS: hero
"We won't make it back in time! The town is doomed!" #CLASS: littlesis

+ Check your inventory for something that might help
->emergencyinventory

=emergencyinventory

The Staff of Power! You hold it in your hands and feel a rush of magical power flowing through you, making your long hair billow in non-existent wind. Your eyes sparkle, and you lightly glow in a rainbow haze.

+ It’s all a bit much. 

But what spell could you possibly use to get home quickly? You never had a brain for spellmaking... 
+ + ... but you've always had an excellent memory for details!
->spell1race

=spell1race
What spell could you chant?
+ Chant the Cleaning Clothes spell
->wrongspell ->spell1race
+ Chant the Muscular Cow spell
->fasthorse
+ Chant the Sleeping spell
->wrongspell ->spell1race


=wrongspell
No! That spell isn't going to help here! And you're running out of time!
...
->->

=fasthorse
Ahem... I hope this works... #CLASS: hero
“I wish this beast that eats a flower #CLASS: magic
Would gain a most tremendous power!” #CLASS: magic

The horse grows and grows into A MIGHTY WARHORSE, with a broad back and calves to die for.

+"Let's go!" #CLASS: hero
->racehome

=racehome

Your borrowed mighty warhorse gallops back through [insert place] and past [insert place], and gets to the toll bridge. Rather than stopping, it mightily LEAPS over the troll's head!
"I'm too scared to do anything! Go save our town!" #CLASS: troll
+ You charge through town and out the other side, heading for the border wall.

->villainarrives

=villainarrives

You burst into the clearing behind your home. 
24 hours ago, a single goblin (or whatever monster) was here, causing chaos.
Now it's looking much...
+ ...much...
worse.

From your hilltop viewpoint, you can see an army of goblins marching up towards the gate. 
Behind them, a second army of GHOST GOBLINS.
And riding a young red dragon over their heads, 
+ + is..

INGRID EVIL, GOBLIN NECROMANCER!! (or BOOBERGHANT, I haven't decided)

+ + + She casts a spell to amplify her voice, and it booms through the town:

"BWAHAHAHAHAHAHA! THERE IS NOTHING YOU CAN DO TO STOP ME NOW, FEEBLE WITCHES!" #CLASS: necromancer 

+ + + + "Oh yeah? Well we beg to differ!" #CLASS: hero
->canthear
+ + + + "This Staff of Power says otherwise!" #CLASS: hero
->canthear
+ + + + "Yeah? Well, you're a stinky poo-face and no one likes you!" #CLASS: hero
->canthear
+ + + + "Yolene? I can't think of a comeback. Can you?" #CLASS: hero
->canthear
+ + + + "Ahhhhh! Oh noooo!!! We're dooooooomed! Someone save us!" #CLASS: hero
->canthear


=canthear

"I CAN'T HEAR YOU, SILLY YOUNGER WITCHES! BUT EVEN BETTER; YOU WON'T EVEN SEE YOUR END COMING! BWAHAHAHAHAHAHA!!! #CLASS: necromancer 

And with that, Ingrid Evil raises her Wand of Wickedness over her head, and chants a spell:

"They think their bite's worse than their bark #CLASS: magic
Let them suffer IN THE DARK!" #CLASS: magic

+ And suddenly, the whole world is pitch black!
->spell2dark 

=spell2dark
What should you do? You can hear the army getting closer!
+ Fumble for your white sock!
->droppedit ->spell2dark
+ Chant the Troll Spell!
->wrongspell ->spell2dark
+ Chant the Man and Dog spell!
->wrongspell ->spell2dark
+ Chant the Barrel Man Spell!
->lightdispell

=droppedit
Oh no! It must have fallen out of your inventory when you were riding the horse so fast!
Single socks always get lost in the end.
->->


=lightdispell
I think this one will fix this! #CLASS: hero
Why must this idiot be so whiny? #CLASS: magic
Let everything be clean and shiny! #CLASS: magic

And with a burst of golden light, the magical darkness is instantly dispelled!

"WHAT?? HOW DID YOU DO THAT??" #CLASS: necromancer 
+ "You're not the only one with magical powers!"
->canthear2
+ "HaHA! We've been training to defeat you!"
->canthear2
+ "Honestly, it's a really lucky break! It's a coincidence!"
->canthear2
+ "Why should I bother responding? You can't hear me from all the way over there."
->canthear2

=canthear2
"I STILL CAN'T HEAR YOU! I HOPE WHAT YOU'RE SAYING IS JUST BEGGING FOR MERCY!" #CLASS: necromancer 

And the necromancer launches a bolt of dark energy at the town gates, blowing the doors away, and leaving clear passage for her army to enter the town.

+ But wait - what's that?
Standing in the dust and rubble of the gateway, gibblets high and defiant, is a little turkey!
+ + "Eldra!" #CLASS: hero
"What are you doing, Eldra! It's too dangerous!" #CLASS: littlesis
->spell3defence

=spell3defence
What can you do to help?
+ Chant the Troll spell.
->megaturkey
+  Chant the Disco spell.
->wrongspell ->spell3defence
+ Chant the Muscle Cow Spell.
->wrongspell ->spell3defence

=megaturkey
"I mean... you're already under ONE spell, so..." #CLASS: hero

"They mean to pass but not to pay, #CLASS: magic
They can’t with you standing in their way!" #CLASS: magic

As you finish the spell, you see that brave little turkey get bigger...
+ ... and bigger...
... until it fills the gateway with its giant brown feathers.
+ +  Some of the stupider goblins still charge -
- and get crushed under giant talons, and pecked by a giant beak!
+ + + The other goblins all scream and flee!

"WHAAAATT? MY ARMY? HOW COULD YOU?" #CLASS: necromancer 
+ + + + say nothing
->canthear3

=canthear3
"I'M SURE YOU'RE RESPONDING, BUT IT'S VERY WINDY UP HERE!"
+ Ugh
"DO YOU THINK YOU'VE STOPPED ME? MY GHOST GOBLIN ARMY CAN GO STRAIGHT THROUGH THE WALLS!" #CLASS: necromancer 

And they do! Bursting through the wall uphill of MegaTurkey Eldra, spectral goblins holding spectral flaming torches emerge like smoke and CHARGE towards you! 
+ + You only have a moment to prepare!
->spell4spirits

=spell4spirits
Could a spell save you yet again?
+ Chant the Sleeping spell
->wrongspell ->spell4spirits
+  Chant the Tavern spell
->spiritsbegone
+  Chant the Body Swap spell
->wrongspell ->spell4spirits

=spiritsbegone
"I mean, this one takes a bit of creative license..." #CLASS: hero
I wish these sillies / people knew this rule: #CLASS: magic
You don’t need spirits to be cool! #CLASS: magic

+ And with a gust of chilly wind...
The goblin spirits transform into delicate snowflakes, that flutter gracefully to the floor.

"WHAAAT???? MY OTHER ARMY TOO? HOW CAN THIS BE????" #CLASS: necromancer 

+ + And the necromancer flies her dragon over the gate[,] landing directly in front of you.
->monologue

=monologue
"Well, then, witches, it is true, that your power is strong, but I!! I!!! have studied the dark goblin arts of necromancy for one hundred years! I-" #CLASS: necromancer 

+ Yolene elbows you in the back.
You glance over at her.
She winks at you with a big grin on her face, and then looks pointedly at the Staff of Power in your hands.

->spell5sleep

=spell5sleep


{& "... and it was prophesied by my mother that I was DESTINED to rule over ALL..." |"... my shadowy powers have grown stronger with each passing..." | "You cannot begin to comprehend the start of understanding the commencement of..."|"Soon, all the world shall be dominated by goblinkind! You shall RUE THE DAY THAT..."|"And he patted me on the head and said, "Not bad, sport", which I have always taken to mean... | ...This dragon alone cost 6000 gold coins, and it's a rental, so I have to make sure it returns..."} #CLASS: necromancer

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
+ Chant the Sleep Spell your sisters accidentally invented last night!
->defeat

=defeat
“You ALWAYS think that you know best! #CLASS: magic
For goodness’ sake, give it a REST!” #CLASS: magic

+ PYEWWWWWWWHWHWHWHW!

A beam of blinding light shoots out of the Staff of Power, knocking the Goblin Necromancer flying through the sky, and landing with a thud on your cabbage patch.
...
+ + ...
...
The young red dragon looks around for a second, and then decides it's done, and flys away.
...
+ + + ...
The giant turkey Eldra thuds over to you, and looks down at you appreciately.
"You did it!" #CLASS: bigsis
+ + + + "WE did it." #CLASS: hero
->1lastspell
+ + + + "I couldn't have done it alone." #CLASS: hero
->1lastspell
+ + + + "I did! Thanks for your help, though!" #CLASS: hero
->1lastspell


=1lastspell

"... But I don't know how to undo all this magic! I don't know how to turn you back into yourself, or end any of these Blessings Gone Wrong!" #CLASS: hero
"But I do! I've studied for years, and I have the experience, and I can return everything to normal. I just... can't hold the Staff like this!" #CLASS: bigsis
+ Yolene nudges you again [.]
"You can do this. And you can trust Eldra. She really is looking out for us, after all." #CLASS: littlesis
+ + Chant one last spell... the Man Dog Spell...
->switch

=switch
With your pretty little sister and giant turkey older sister in front of you, you close your eyes and softly chant:
I wish you’d learn to empathise #CLASS: magic
See the world through another’s eyes! #CLASS: magic

Eldra's mind enters Yolene's body.
Yolene's mind enters Eldra's body.
And "Yolene" reaches forward to take the Staff into her hands
+ You hand it to her [,] and she sings a beautiful chant. Onward the tune rolls, as the rainbow glow that surrounds her begins to spread like a wave...
... a wave that floats over a bulky cow and an icy tavern...
+ + across a lonely bridge...
...through a glowing house and under the mountain...
... and all the way to a distant hill where a man and dog are happily playing together...
+ + + and just like that... [] your sisters are back in their bodies...
... and reaching forward to pull you into a warm hug.
->theend

=theend

# CLASS: end
The End
CONGRATULATIONS!

THANK YOU FOR PLAYING
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




