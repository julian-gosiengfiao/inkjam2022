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

+ {item_laundry_room_key} [Enter the building] You try to enter the {building_is_laundry: laundry} building.
    {item_laundry_room_key: The laundry room key unlocks the door.}
    The radiant light floods out of the door and blinds you!
    + + [Get me outta here!] You quickly shut the door and it locks with a click.
    ...
    ->OutsideMine
    + + [Check inventory] In a single, effortless motion, you slide your hand into your inventory, pull your sunglasses out, and sit them on your glorious face.
    + + + [Enter the laundry building] You enter the incandescent laundry building.
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
    He sighs, "Yes. She came through here claiming she could fix everything. And now look at me!"
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
    + + + Pick up the key
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

+ {item_clean_laundry || item_radiant_sock} [Grab some clean laundry] You've already got some clean laundry.
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

+ [Leave the building] You leave the radiant laundry building.
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

+ [Talk to the foreman]
{not TalkToForeman: -> TalkToForeman}
{TalkToForeman: The foreman looks up at you. ->TalkToForeman2}

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
    
    "Working hard, for all the day," #CLASS: magic
    
    "Let's turn it around, and into play!" #CLASS: magic
    
    + + + "That doesn't sound too bad." #CLASS: hero
    
    "Have you ever seen a mine that's been transformed into a non-stop disco?" #CLASS: foreman
    
    + + + + "I get the feeling I'm going to have to." #CLASS: hero
    ...
    ->MineRoom1


VAR asked_about_crack = 0

=TalkToForeman2
+ "Can you tell me what my sister said again?" #CLASS: hero

"As it happens, I have shockingly accurate recall. She said:" #CLASS: foreman

"Working hard, for all the day," #CLASS: magic

"Let's turn it around, and into play!" #CLASS: magic

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
    ->MineDisco


VAR disco_squeeze_attempted = 0

=MineDisco

You are standing in what seems to be a literal disco.

A pumping dance beat pounds through your body, and a smoke machine billows clouds into the air.

Near the other end of the room is a solid writhing mass of partying miners.

{disco_squeeze_attempted: A disco dancer has noticed you and is half-turned towards you, dancing away.}

+ {disco_squeeze_attempted} [Approach the dancer] You walk up to the dancer.
    He is wearing a very tight tanktop that says "SOUL".
    He already doesn't seem very impressed with you.
    + + ["How do I get through here?"] "___ __ _ ___ _____ ___?" #CLASS: hero
    The dancer turns his nose up at you.
    "____ ____ __ ___ _____, ____." #CLASS: dancer
    + + + You can't hear a damn thing.
    He {~grapevines|sashay|step ball-changes|rock steps|jazz squares|moonwalks} away.
    ...
    -> MineDisco
    
    + + Dance
        You try your absolute hardest to dance to the beat.
        Not only do you look like an ocean mollusc making sudden contact with a desert, you are completely off-beat.
        ...
        
    
    -> MineDisco

+ {disco_squeeze_attempted} [Listen to the music]
->DiscoListenMain

+ [Squeeze past the disco-dancing miners] You try to squeeze past the packed dance floor to get to the other exit.
    But it's impossible, the writhing mass of miners is just too solid!
    
    ~disco_squeeze_attempted++
    
    + + You bounce right back off it.
    ...
    -> MineDisco
+ [Go back to the mine entrance] You go back through the dark tunnel using your sunglasses and your sock.
    ...
    -> MineRoom1
+ [Check inventory]
    -> Inventory -> MineDisco


VAR disco_listened_counter = 0

=DiscoListenMain
{disco_listened_counter == 0: ->DiscoListen1}
{disco_listened_counter == 1: ->DiscoListen2}
{disco_listened_counter == 2: ->DiscoListen3}
{disco_listened_counter == 3: ->DiscoListen4}
{disco_listened_counter == 4: ->DiscoListen5}


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
You are in a room full of {looked_at_junk: useless} junk.

There are three giant moles sitting in the middle of the junk.

{looked_at_junk: One of the pieces seems out of place.}

+ {not talked_to_moles} [Talk to the moles?] "Hello?" #CLASS: hero
    The moles sniff the air.
    The largest one turns in your general direction.
    "HELLO FROM MOLE." #CLASS: mole
    + + [It speaks!] "You can speak!" #CLASS:hero
    "YES. I AM MOLE." #CLASS: mole
    ...
    
    ~talked_to_moles++
    -> MoleOptions
    
+ {talked_to_moles} [Talk to the moles] "Hello, moles." #CLASS: hero
    "HELLO FROM MOLE." #CLASS: mole
    ->MoleOptions
    
+ {not talked_to_moles} [Look at junk] You try to look at the junk strewn across the room, but you are totally distracted by these gigantic moles.
    ...
    ->MoleRoom

+ {talked_to_moles} [Look at the junk] You cast your eye over the junk and point a random piece out.
    "What's this?" #CLASS: hero
    {&"FROM A SHOE, A SOLE. WHOEVER WORE IT IS NO LONGER A FOAL."|"AN ANCIENT SCROLL. IT TELLS A STORY WHOLE."|"A VERY NARROW POLE. WE FOUND IT UPON AN ATOLL."|"A PIECE OF COAL. BE CAREFUL, FOR IT MAY ROLL."|"A DISCARDED BEDROLL. DISCOVERED DURING PATROL".|"THE MOST ORNATE BOWL. UPSIDE DOWN, IT MAKES A KNOLL."}
    ...

    ~looked_at_junk++
    ->MoleRoom

+ {looked_at_junk && not asked_about_strange_junk} [Ask about out-of-place junk] "This doesn't seem to fit in." #CLASS: hero
    You point at a key with a comically large label that reads "...CUPBOARD". You can't make it all out from where you are.
    + + The moles look uncomfortable.
    "YES... WE THOUGHT IT A GREAT CAJOLE." #CLASS: mole
    Another mole stirs.
    "PERSONALLY, I THINK IT'S OUT OF CONTROL." #CLASS: mole2
    + + + "Can I have it?" #CLASS: hero
    The moles sniff for a moment.
    "A TRADE WILL MAKE US WHOLE." #CLASS: mole
    "BRING US AN OBJECT SACRED FOR MOLE." #CLASS: mole2
    "IF YOU DESIRE THIS, YOU WILL ENROLL." #CLASS: mole
    + + + + "Fair enough." #CLASS: hero
    ...
    ->MoleRoom
    
+ {asked_about_strange_junk} [Ask about cupboard key] "Can I have this?" #CLASS: hero
    "A TRADE WILL MAKE US WHOLE." #CLASS: mole
    "BRING US AN OBJECT SACRED FOR MOLE." #CLASS: mole2
    "IF YOU DESIRE THIS, YOU WILL ENROLL." #CLASS: mole
    + + "Fair enough." #CLASS: hero
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
    "HAVE A NICE STROLL." #CLASS: mole
    ...
    ->MoleRoom
    

->END

/*
Laundry room and come back to barrel man
Glowing sock for dark room
Mole who wants something from dancers
dancers who block the way, but teach you moves or something for mole
mole gives you key to laundry which has all the soap
put soap into the smoke machine

MOLE HOLE?
Use BOLDS. USE THEM!

pole
foal
bowl
stol
moll


barrelman offers sister information before you help him?

*/