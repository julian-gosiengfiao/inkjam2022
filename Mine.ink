=TransitionToMineArea

{not item_sunglasses:
~item_sunglasses++
} //In case we skip our way here

The bridge is long, and overlooks craggy cliffs.

+ [Walk to the end] You walk to the end.
#CLEAR

#IMAGE: images/theMine.png
You walk to the end.

You see the mine-pass not far ahead, the only safe way through the mountains.

+ + [Approach the mine] You approach the mine.

...
->OutsideMine


VAR item_laundry_room_key = 0
VAR barrel_reset = 0
VAR building_is_laundry = 0
VAR entered_laundry_with_shades = 0

=OutsideMine

You are outside the entrance to a mine.

There is a {not building_is_laundry: single building out} {building_is_laundry: laundry building} here, with intense light pouring out of every opening.

{not barrel_reset: You notice a wiggling barrel next to the building.}
{barrel_reset && not item_laundry_room_key: There is a man in a barrel, eyeing you from beneath the lid.}
{kicked_for_key && not item_clean_laundry: There is a barrel with a man inside here.}
{got_key_nicely && not item_clean_laundry: Barrel-man is chilling in his barrel here.}
{item_clean_laundry: Barrel-man is excitedly waving at you.}
{item_clean_laundry: "You've gotten some clean clothes!!! Bring them over here to me!"} #CLASS: barrelman
{item_radiant_sock: The normally dressed barrel-man is standing here next to a barrel.}


+ {not item_laundry_room_key} [Enter the building] You try to enter the {building_is_laundry: laundry} building.
    It's locked, and you don't have a key.
    + + {not building_is_laundry} You note it says: "LAUNDRY STATION" in big letters on the door.
    ~building_is_laundry++
    ...
    ->OutsideMine
    + + {building_is_laundry} Darn.
    ...
    ->OutsideMine

+ {item_laundry_room_key && not LaundryBuilding} [Enter the building] You try to enter the {building_is_laundry: laundry} building.
    {item_laundry_room_key: The laundry room key unlocks the door.}
    The radiant light floods out of the door and blinds you!
    + + [Get me outta here!] You quickly shut the door and it locks with a click.
    ...
    ->OutsideMine
    + + [Check inventory] In a single, effortless motion, you slide your hand into your inventory, pull your sunglasses out, and sit them on your glorious face.
    + + + [Enter the laundry building] You enter the incandescent laundry building.
    ...
    ->LaundryBuilding

+ {LaundryBuilding} [Enter the laundry building] You slip your sunglasses on and enter the laundry building.
    ...
    ->LaundryBuilding

//BARREL STUFF

    + {not BarrelKicked} [Inspect the barrel]
    #CLEAR
    -> BarrelImage
    
    
    + {BarrelKicked && not barrel_reset} [Inspect the barrel] The lid's shut tight.
    Maybe you should let him cool off for a bit.
    ...
    ->OutsideMine
    
    + {barrel_reset && not item_laundry_room_key} [Talk to the man in the barrel]
    ->BarrelTalk
    
    + {kicked_for_key} [Inspect the barrel] You find it very hard to blame your sister for this particular situation, but you still feel you should solve this man's problem.
    ...
    -> OutsideMine
    
    + {got_key_nicely} [Talk to barrel-man] "Just you wait, I'll protect your modesty." #CLASS: hero
        "Awfully kind of you, thanks." #CLASS: barrelman
        ...
        ->OutsideMine
    
    + {item_clean_laundry} [Give barrel-man some clothes] You pass the bundle of laundry to barrel-man, who quickly opens it up.
    
        ~item_clean_laundry--
        
        You lose the clean laundry. #CLASS: giveitem
    
        Immediately, incandescent rays shoot out from inside the bundle.
    
        + + "AAAAAAAARGHHH!!!" #CLASS: hero
        
        "AAAAAAAARGHHHH!!!" #CLASS: barrelman
        
        + + + [Put on your sunglasses] You put on your sunglasses.
        
        Barrel-man topples over, and goes flying out of the barrel in his birthday suit, blinded.
        
        + + + + Inside the bundle was a radiant sock!
        
        "I'm blind, I'm blind!!!" #CLASS: barrelman
        
        You look at barrelman trying to get dressed while totally blinded.
        
        It's quite impressive.
        
        ->BlindedDressup
        
    + {item_radiant_sock} [Talk to barrel-man] "I'll never complain about doing my laundry again." #CLASS: barrelman
    
        "I'm sure you won't." #CLASS: hero 
        ...
        ->OutsideMine
        
+ [Enter the mine] You enter the mine.
...
-> MineRoom1

+ [Check your inventory]
->Inventory -> OutsideMine

VAR item_radiant_sock = 0

=BlindedDressup
+ [Watch him some more] You watch him some more.
    He's actually quite good at this.
    + + I guess you have to do that in the mines sometimes.
        
        -> BlindedDressup

+ [Pick up the radiant sock] You pick up the radiant sock and put it away. #CLASS: getitem

    ~item_radiant_sock++

    Your immediate surroundings stop being mildly incandescent.
    Barrel-man is now a normally-clothed-man, and he finishes getting dressed.
    + + [Yes! You fixed this!]
    "Thank you, traveler! I was getting sick of hiding in that barrel. #CLASS: barrelman
    + + + You slightly doubt this, but sure.
    "Your sister said that she was going to the forests beyond the tunnel to finish more good deeds." #CLASS: barrelman
    "You'll have to get through the mines to get to her." #CLASS: barrelman
    + + + + ["Thank you."] "Thank you, barrel-man." #CLASS: hero
    Oops, that last part just came out.
    ...
    ->OutsideMine    

=BarrelImage
#IMAGE images/barrel.png
You walk up to the barrel.
It wiggles.
You're pretty sure there's something in it.
->BarrelSequence

=BarrelSequence
+ [Tap it with your foot] You tap it with your foot.

You hear some indistinct noises inside the barrel.

->BarrelSequence

+ [Kick it over] You kick the barrel over.
"AAAAAARGH!!!" #CLASS: barrelman
A short, stocky, bearded man in his birthday suit goes rolling out of the barrel.
->BarrelKicked

+ [Leave it alone] You leave it alone.
-> OutsideMine

=BarrelKicked
+ [Oh my!] He immediately tries to get back into the barrel, while spewing a stream of profanities.

+ + "Have you seen my sister?" #CLASS: hero

"YOU CRAZY SWAMP-WATER-DRINKING LOON! GET AWAY FROM ME!" #CLASS: barrelman

He clambers back into the barrel and slams the lid tightly shut.

+ + + Oops.
...
-> OutsideMine

=BarrelTalk
The man looks at you suspiciously.

+ "I'm sorry about earlier!" #CLASS: hero
    "That's alright," The man in the barrel eyes you. #CLASS: barrelman
    + + "Is a witch resposible for this?" #CLASS: hero
    He sighs, "Yes. She came through here claiming she could fix everything. And now look at me!"#CLASS: barrelman
    + + + "What did you tell her, exactly?" #CLASS: hero
    The man in the barrel pauses.
    "Life is just a never-ending series of chores," #CLASS: barrelman
    + + + + [Nod] You suddenly feel a kinship with the barrel-man, but you don't show it on the outside.
    "And day in, day out, I'm just washing black soot out of my work uniform." #CLASS: barrelman
    + + + + + "Uh, huh..." #CLASS: hero
    "So I said to her, I wish that it was LITERALLY IMPOSSIBLE for my uniform to pick up EVEN THE SMALLEST speck of dirt, and that it would ALWAYS shine RADIANTLY FOR ALL TO SEE!" #CLASS: barrelman
    + + + + + + [Look at the building] You both look at the glowing {building_is_laundry: laundry} building, with radiant light erupting from every window and crack.
    You both look back at each other.
    + + + + + + + [Show polite concern] You try to say something nice, but you notice your jaw is hanging completely open and you are just staring at barrel-man.
    ->BarrelTalk2
    + + + + + + + [Show empathy] You raise your hand to shrug, but it moves of its own volition and slaps your forehead loudly.
    ->BarrelTalk2
    
+ "HAVE YOU SEEN MY SISTER?!" #CLASS: hero
    The man immediately pops back into the barrel, snapping the lid shut.
    ~barrel_reset--
    + + Oops.
    ...
    ->OutsideMine

VAR kicked_for_key = 0
VAR got_key_nicely = 0


=BarrelTalk2
"I'll give you a key to the laundry room if you help me get something to wear," he says. #CLASS: barrelman
"But be careful - it's so bright you could be blinded! No one else can go near, for we are miners and we need our vision, especially in the dark." #CLASS: barrelman
+ "Alright." #CLASS: hero
    He gives you the key to the laundry. #CLASS: getitem
    
    ~item_laundry_room_key++
    ...
    ->OutsideMine

    + [Kick the barrel over] You kick the barrel over, and the naked man tumbles out.
    "AAAAAAAARGHHH!!!" #CLASS: barrelman
    He scrambles back into the barrel, profanities flying left and right, and snaps the lid shut.
    + + You realize you have a terrible need to work on your self-control.
    At least he left the key outside the barrel, though.
    + + + [Pick up the key] You pick up the key to the laundry. #CLASS: getitem
    ~item_laundry_room_key++
    ...
    ->OutsideMine

VAR item_clean_laundry = 0
VAR item_supplies_key = 0
VAR item_detergent = 0

=LaundryBuilding
You are standing inside a room with laundry supplies and various implements for doing laundry.

In the center of the room is a pile of clean laundry, atop which sits clean clothes of utter radiance.

+ {not item_clean_laundry && not item_radiant_sock} [Grab some clean laundry] You're momentarily tempted to grab the blindingly radiant laundry, but you like being able to see.

    You grab some non-radiant clean laundry. #CLASS: getitem

    ~item_clean_laundry++
    
    ...
    ->LaundryBuilding

+ {item_clean_laundry && not item_radiant_sock} [Grab some clean laundry] You've already got some clean laundry.
    + + Barrel-man is naked, but he's not <i>that</i> naked.
    ...or is he?
    ...
    -> LaundryBuilding
    
+ {not item_supplies_key} [Grab some laundry supplies] You try to open the door marked "DETERGENT CUPBOARD" but it's locked.
    + + These people sure are protective of their laundry.
    ...
    -> LaundryBuilding

+ {item_supplies_key && not item_detergent} [Grab some laundry supplies] You use the key to unlock the door marked "DETERGENT CUPBOARD".

    You get yourself a box of <i>RADIANT SHINE Extra-Foamy Premium Laundry Detergent</i>. #CLASS: getitem
    
    ~item_detergent++
    
    ...
    -> LaundryBuilding

+ {item_supplies_key && item_detergent} [Grab some laundry supplies] You've already got some overpriced detergent.
    ...
    -> LaundryBuilding

+ [Leave the building] You leave the radiant laundry building and slip your sunglasses off.
    ...
    ->OutsideMine

+ [Check your inventory]
    ->Inventory ->LaundryBuilding


=MineRoom1
{BarrelKicked && barrel_reset == 0:
~barrel_reset++
} //If you kicked the man over and went in here, he'll come out because he's ready to talk to you now.

You are in the well-lit entry hall of the mine tunnel.

An exhausted foreman is leaning against a wall.

There's a sizable crack in the wall next to the foreman.

The tunnel goes on into the darkness.

+ {not TalkToForeman} [Talk to the foreman] ->TalkToForeman
+ {TalkToForeman} [Talk to the foreman again] The foreman looks up at you. ->TalkToForeman2

+ {asked_about_crack && not crack_travelled} [Examine the crack] You examine the crack in the wall.
->ExamineCrack

+ {crack_travelled} [Go into the {not mole_hole_dub: crack}{mole_hole_dub: MOLE HOLE}] You squeeze through the crack {mole_hole_dub: into the MOLE HOLE}.
...
->MoleRoom


+ {not dark_section_solved} [Go deeper into the tunnel] You go deeper into the tunnel.
...
->TunnelDarkSection

+ {dark_section_solved} [Go deeper into the tunnel] You traverse the darkness with your sunglasses and your sock.
    ...
    ->MineDisco


+ [Exit the mine] You go back out the way you came.
...
->OutsideMine

+ [Check inventory]
->Inventory ->MineRoom1

VAR crack_travelled = 0

=ExamineCrack
It's quite a large crack.

It looks like it goes pretty deep, and you might be able to fit through it.

+ [Try to squeeze through] You try to squeeze through the crack.
    ...
    + + It's a tight fit...
    ...
    + + + ...
    ...
    + + + + You emerge through the other end.
    ...
    ~crack_travelled++
    -> MoleRoom
    
+ [Leave it alone]
-> MineRoom1


=TalkToForeman
The foreman looks up as you approach.

"Not another one of you." #CLASS: foreman

+ "I see you've met my little sister." #CLASS: hero

    "So you do know her! She came in, claiming to be some powerful witch who could fix everything."#CLASS: foreman
    
    "All I wanted was for my men not to have to work so hard in these mines."#CLASS: foreman
    
    + + "Uh-oh. What happened?"
    
    "As it happens, I have shockingly accurate recall. She said:" #CLASS: foreman
    
    Working hard, for all the day, #CLASS: magic
    
    Let's turn it around, and into play! #CLASS: magic
    
    + + + "That doesn't sound too bad." #CLASS: hero
    
    "Have you ever seen a mine that's been transformed into a non-stop disco?" #CLASS: foreman
    
    + + + + "I get the feeling I'm going to have to." #CLASS: hero
    ...
    ->MineRoom1


VAR asked_about_crack = 0

=TalkToForeman2
+ "Can you tell me what my sister said again?" #CLASS: hero

"As it happens, I have shockingly accurate recall. She said:" #CLASS: foreman

Working hard, for all the day, #CLASS: magic

Let's turn it around, and into play! #CLASS: magic

+ + "...And now your miners no longer have to work so hard, because the mine is a disco. Got it." #CLASS: hero
...
->TalkToForeman2

+ "What's with this crack in the wall?" #CLASS: hero

"Moles." #CLASS: foreman

+ + "Moles?" #CLASS: hero

~asked_about_crack++

"Moles." #CLASS: foreman
->TalkToForeman2

+ "See ya." #CLASS: hero
The foreman looks back down at his business.
...
->MineRoom1

VAR dark_section_sunglasses = 0
VAR dark_section_solved = 0

=TunnelDarkSection
It's really dark in here, and you can't see where you're going.
+ [Keep going] You keep going.
    You bang into something.
    {~"Oof!"|"Ow!"|"Ack!"|"Eep!"|"Ouch!"} #CLASS: hero
    + + It's really painful!
    ...
    -> TunnelDarkSection
    
+ [Go towards the entrance] You go back out towards the entrance {dark_section_sunglasses: and put your sunglasses away}.
    
    ~dark_section_sunglasses = 0
    ...
    -> MineRoom1

+ {not dark_section_sunglasses && not item_radiant_sock} [Check inventory] You put your sunglasses on and make it even worse.

    ~dark_section_sunglasses++
    ...
    ->TunnelDarkSection

+ {item_radiant_sock} [Check inventory] You put your sunglasses on, and hold up the radiant sock.

    The radiant light from just this sock doesn't go THAT far, but at least you can see!
    
    + + [Keep going] You keep going.
    ...
    This tunnel goes on and on.
    
    + + + [Keep going] You keep going.
    ...
    You can hear some faint pulsing in the distance.

    + + + + [Keep going]
    ...
    The pulsing gets louder - it is a thumping bass beat.
    
    + + + + + [Keep going]
    ...
    As you get closer, you can hear the music.
    
    + + + + + + [Keep going...]
    ...
    The closer and closer you get, the clearer and clearer the music is.
    
    + + + + + + + [Keep going...!]
    ...
    You begin to realize the music is terrible.
    And made up almost completely up of a bass drum and a hi-hat.
    + + + + + + + + [You're there!]
    ~dark_section_solved++

    ...
    You put your sock and sunglasses away, and emerge in a huge chamber in the middle of the mine.
    + + + + + + + + + [Look around]
    ...
    ->MineDisco


VAR disco_squeeze_attempted = 0

=MineDisco

You are {disco_listened_counter == 0:standing}{disco_listened_counter == 1: slightly bobbing your head}{disco_listened_counter == 2: swaying awkwardly}{disco_listened_counter == 3: shaking half a butt}{disco_listened_counter <= 4: aggressively two-stepping} in what seems to be a literal disco.

A pumping dance beat shakes your insides, and a {not event_detergent_used: smoke machine billows clouds into the air.}{event_detergent_used: foam covers absolutely everything, making it slippery slick!}

Near the other end of the room is a solid writhing mass of partying miners{event_detergent_used: covered in FOAM!}{not event_detergent_used:.}

{disco_squeeze_attempted && not event_wowed_dancer: A disco dancer has noticed you and is half-turned towards you, dancing away.}

+ {disco_squeeze_attempted && not event_wowed_dancer} [Approach the dancer] You walk up to the dancer.
    He is wearing a very tight white tanktop that says "SOUL".
    He already doesn't seem very impressed with you.
    + + ["How do I get through here?"] "___ __ _ ___ _____ ___?" #CLASS: hero
    The dancer turns his nose up at you.
    "____ ____ __ ___ _____, ____." #CLASS: dancer
    + + + You can't hear a damn thing.
    He {~grapevines|sashays|step ball-changes|rock steps|jazz squares|moonwalks} away.
    ...
    -> MineDisco
    
    + + [Dance]
        {disco_listened_counter <= 0:
        Not only do you look like an ocean mollusc making sudden contact with a desert, you are completely off-beat.
        The dancer looks horrified and quickly turns away.
        + + + You tried. ->PostDanceBreak
        }
        {disco_listened_counter == 1:
        You are a mess of flailing limbs and jerky movements, and there are maybe one or two moments when you don't look like a human blender.
        The dancer looks displeased and resumes his dancing.
        + + + At least you showed up. ->PostDanceBreak
        }
        {disco_listened_counter == 2:
        You somehow move in a way that accentuates all the worst parts of your physique, but it's almost enchanting, and somewhat on beat.
        The dancer looks intrigued, but turns away.
        + + + It's something. ->PostDanceBreak
        }
        {disco_listened_counter == 3:
        You move with the practiced elegance of a freshly birthed elephant, seamlessly chaining swinging elbows to flailing kicks. If it weren't for the fact that you couldn't dance, it would almost look like a new dance style.
        The dancer looks impressed, then averts his attention elsewhere.
        + + + You are a hotdog. ->PostDanceBreak
        }
        {disco_listened_counter >= 4:
        Your rage at your lack of coordination shines through in some sort of interpretive masterpiece, every aimless flail making sweet lyrical love to each grunt, default-drum-sample-clap and looped synth note.
        You are the very image of a dancer's struggle.
        The dancer has stopped dancing and is in tears.
        + + + You would be crying too. <br> ->WowedDancer
        }

+ {disco_squeeze_attempted && not event_wowed_dancer} [Listen to the music]
->DiscoListenMain

+ {event_wowed_dancer} [Check out the smoke machine]
    {not CheckOutSmokeMachine: You notice the smoke machine that was behind the dancer.}
    {CheckOutSmokeMachine: You check out the smoke machine.}
    ->CheckOutSmokeMachine

+ {not event_detergent_used} [Squeeze past the disco-dancing miners] You try to squeeze past the packed dance floor to get to the other exit.
    But it's impossible, the writhing mass of miners is just too solid!
    
    ~disco_squeeze_attempted++
    
    + + You bounce right back off it.
    ...
    -> MineDisco

+ {event_detergent_used} [Squeeze past the foamy disco-dancing miners] You try to squeeze past the packed dance floor to get to the other exit.
    It's a tight fit, but you slip and you slide your way through the heaving mass, and successfully emerge out the other side!
    ->ToManDogTransition
    
+ [Go back to the mine entrance] You go back through the dark tunnel using your sunglasses and your sock.
    ...
    -> MineRoom1
+ [Check inventory]
    -> Inventory -> MineDisco

=PostDanceBreak
<br>
...
->MineDisco

VAR event_detergent_used = 0

=CheckOutSmokeMachine
Looks industrial-grade.
There's a slot in the top to put smoke fluid (or something else?) into.
+ [Okay.]
...
-> MineDisco

+ {item_detergent}[Pour detergent into the smoke machine] You pour detergent into the smoke machine.
You no longer have detergent. #CLASS: giveitem
~item_detergent--
~event_detergent_used++
The smoke machine starts billowing out beautiful bubbles of FOAM!

+ + It's a FOAM PARTY!

Shrieks of delight ring out across the disco as foam descends on the dancers, covering everything in a slippery, slippery, slippery cloak of foam.
...
->MineDisco


VAR item_soul_tanktop = 0
VAR event_wowed_dancer = 0

=WowedDancer
...
He screams something unintelligible over the intestinal bass guitar booming over the speakers, and strips off his tight white tanktop with "SOUL" emblazoned on the front.

He throws it down at your feet, tears streaming down his face, and drops to his knees.

+ [Then you watch him grovel.] You watch him literally grovel at your feet.

When he finishes, he gets up, turns around, and disappears into the heaving mass of dancing disco-miners.

+ + [Pick up the SOUL tanktop.] You pick up the tiny white tanktop with SOUL written in giant letters on the front. #getitem

~item_soul_tanktop++
~event_wowed_dancer++

+ + + It's sweaty.

...

->MineDisco


VAR disco_listened_counter = 0

=DiscoListenMain
{disco_listened_counter == 0: ->DiscoListen1}
{disco_listened_counter == 1: ->DiscoListen2}
{disco_listened_counter == 2: ->DiscoListen3}
{disco_listened_counter == 3: ->DiscoListen4}
{disco_listened_counter <= 4: ->DiscoListen5}


=DiscoListen1
You are actively resisting it, but you listen to the music anyway.
Besides being percussively incessant, it's pumping away at a manic pace that would give anyone a heart attack.
+ Why would anyone listen to this stuff?!
~disco_listened_counter++
...
->MineDisco

=DiscoListen2
The music is unrelenting, and it continues to fill your head.
The bassline is so over-tuned it actually sounds gastric. And it runs all over the beat, like a snorting possum fallen out of a chimney into the middle of your living room.
+ Like a possum! A snorting one!
~disco_listened_counter++
...
->MineDisco

=DiscoListen3
The music is just impossible to ignore.
This song sounds like someone took a synth keyboard to the recording session and then used it as a brawl weapon with the power switched on.
+ ...against their bandmates, who were also simultaneously recording this song.
~disco_listened_counter++
...
->MineDisco

=DiscoListen4
Your dysfunctional relationship with the music continues.
WHY IS THERE GRUNTING IN THIS SONG? The song lacks lyrics, but there are still "vocals" if you could call them that, which just consist of a man grunting into the microphone.
+ Against all odds, this part of the song sounds gastric, too.
~disco_listened_counter++
...
->MineDisco

=DiscoListen5
You are a connoisseur of cacophony.
You can hear every yell, crash, UNCE, pipipapapappopoporooot (???) and grunt (?!) this song has to offer.
+ This song would be like a fine wine if wine were made from garbage.
...
->MineDisco

VAR talked_to_moles = 0
VAR looked_at_junk = 0
VAR asked_about_strange_junk = 0

=MoleRoom
You are in a room full of {looked_at_junk: useless} stuff.

There are three giant moles sitting in the middle of all the junk.

{looked_at_junk && not asked_about_strange_junk: One of the items in here seems out of place.}
{asked_about_strange_junk && not item_supplies_key: A key to some kind of "...CUPBOARD" seems out of place.}

+ {not talked_to_moles} [Talk to the moles?] "Hello?" #CLASS: hero
    The moles sniff the air.
    The smallest one turns in your general direction.
    "HELLO FROM MOLE." #CLASS: mole
    + + [It speaks!] "You can speak!" #CLASS:hero
    "YES. I AM MOLE." #CLASS: mole
    ...
    
    ~talked_to_moles++
    -> MoleOptions
    
+ {talked_to_moles && not item_supplies_key} [Talk to the moles] "Hello, moles." #CLASS: hero
    "HELLO FROM MOLE." #CLASS: mole
    ->MoleOptions

+ {talked_to_moles && item_supplies_key} [Talk to the moles] "Hello, moles." #CLASS: hero
    "HELLO FROM MOLE." #CLASS: mole
    ->MoleRoom
    
+ {not talked_to_moles} [Look at junk] You try to look at the junk strewn across the room, but you are totally distracted by these gigantic moles.
    ...
    ->MoleRoom

+ {talked_to_moles && not item_supplies_key} [Look at junk] You cast your eye over the junk and point a random piece out.
    "What's this?" #CLASS: hero
    {&"FROM A SHOE, SOLE. EXAMPLE OBJECT SACRED FOR MOLE."|"ANCIENT STORIED SCROLL. EXAMPLE OBJECT SACRED FOR MOLE."|"VERY NARROW POLE. EXAMPLE OBJECT SACRED FOR MOLE."|"NICE OLD COAL. EXAMPLE OBJECT SACRED FOR MOLE."|"DISCARDED BEDROLL. EXAMPLE OBJECT SACRED FOR MOLE."|"MOST ORNATE BOWL. EXAMPLE OBJECT SACRED FOR MOLE."}
    
    
/*    {&"FROM A SHOE, A SOLE. WHOEVER WORE IT IS NO LONGER A FOAL."|"AN ANCIENT SCROLL. IT TELLS A STORY WHOLE."|"A VERY NARROW POLE. WE FOUND IT UPON AN ATOLL."|"A PIECE OF COAL. BE CAREFUL, FOR IT MAY ROLL."|"A DISCARDED BEDROLL. DISCOVERED DURING PATROL".|"THE MOST ORNATE BOWL. UPSIDE DOWN, IT MAKES A KNOLL."}*/
    ...

    ~looked_at_junk++
    ->MoleRoom

+ {looked_at_junk && not asked_about_strange_junk} [Ask about out-of-place junk] "This doesn't seem to fit in." #CLASS: hero
    You point at a key with a comically large label that reads "...CUPBOARD". You can't make it all out from where you are.
    + + The moles look uncomfortable.
    "YES... WE THOUGHT GREAT CAJOLE." #CLASS: mole
    Another mole stirs.
    "PERHAPS OUT OF CONTROL." #CLASS: mole2
    + + + "Can I have it?" #CLASS: hero
    The moles sniff for a moment.
    "TRADE MAKE US WHOLE." #CLASS: mole
    "BRING US OBJECT SACRED FOR MOLE." #CLASS: mole2
    "IF YOU DESIRE, YOU ENROLL." #CLASS: mole
    + + + + {not MineDisco} You don't think you've seen anything the moles would want so far...
    Maybe keep an eye out for later.
    ...
    ~asked_about_strange_junk++
    ->MoleRoom

    + + + + {MineDisco} You may have seen something that might fit the bill...
    Something white. And <b>tight</b>.
    ...
    ~asked_about_strange_junk++
    ->MoleRoom
    
+ {asked_about_strange_junk && not event_wowed_dancer} [Ask about key] "Can I have this?" #CLASS: hero
    "TRADE MAKE US WHOLE." #CLASS: mole
    "BRING US OBJECT SACRED FOR MOLE." #CLASS: mole2
    "IF YOU DESIRE, YOU ENROLL." #CLASS: mole
    + + {not MineDisco} You don't think you've seen anything anything the moles would want so far...
    Maybe keep an eye out for later.
    ...
    ->MoleRoom
    + + {MineDisco} You may have seen something that might fit the bill...
    Something white. And <b>tight</b>
    ...
    ->MoleRoom

+ {item_soul_tanktop && not item_supplies_key && not asked_about_strange_junk} [Present the "SOUL" tanktop to the moles] You present the tiny, sweaty tanktop that reads "SOUL" to the moles.
    The moles all react differently.
    "IS THIS AN OBJECT BEFITTING MOLE?!" #CLASS: mole2
    "IT READS SO ON FRONT; 'SOUL!'" #CLASS: mole
    "THIS IS JOKE, VIOLATION OF PAROLE!" #CLASS: mole2
    The third, largest mole stirs.
    "IF I DON'T GET IT, YOU MUST CONSOLE" #CLASS: mole3
    + + ["Uh..."]
    Before you can speak, the third mole reaches over, and takes the tiny, sweaty tanktop from you.#CLASS: giveitem
    It places it atop the grand pile of stuff, and then gives you the key.
    "THIS ITEM, FOR YOU I DOLE." #CLASS: mole3
    You get the key marked SUPPLIES CUPBOARD! It has a picture of detergent on it. #CLASS: getitem
    
    ~item_supplies_key++
    ~item_soul_tanktop--
    + + + "Thanks!" #CLASS: hero
    ...
    ->MoleRoom

+ [Go back through the crack] You squeeze through the crack again.
...
->MineRoom1
+ [Check inventory]
->Inventory ->MoleRoom

VAR mole_hole_dub = 0

=MoleOptions
+ "Have you seen a witch around here?"#CLASS: hero
    "NO. NONE OF SUCH ROLE."#CLASS: mole
    ...
    ->MoleOptions
+ "What's all this junk?"#CLASS: hero
    "WE COLLECT OBJECTS GOOD FOR MOLE."#CLASS: mole
    "SACRED OBJECTS: THAT IS GOAL."#CLASS: mole
    ->MoleOptions
+ "What are you doing here?" #CLASS: hero
    "WE SIT HERE IN HOLE."#CLASS: mole

    ~mole_hole_dub++
    ->MoleOptions
+ "Okay, thanks, moles." #CLASS: hero
    "HAVE NICE STROLL." #CLASS: mole
    ...
    ->MoleRoom
    
=ToManDogTransition
+ You did it!!!
The rest of the tunnel continues to the other side of the mountains, where Yolene has gone.
+ + Let's go get her.
You continue until you exit the mines and are greeted by the outside world.
+ + + [Leave the mines behind you]
->mandogpuzzlestart

->END

/*


barrelman offers sister information before you help him?

*/