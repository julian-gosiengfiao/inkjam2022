var storyContent = ﻿{"inkVersion":20,"root":[["\n","\n","\n","\n",{"->":"StartSequence"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"StartSequence":[["^You are on a country road.","\n","^In the distance, ","ev",{"VAR?":"looked_at_monster"},"/ev",[{"->":".^.b","c":true},{"b":["^ a Gorgon Eye",{"->":".^.^.^.7"},null]}],"nop","^ ","ev",{"VAR?":"looked_at_monster"},"!","/ev",[{"->":".^.b","c":true},{"b":["^ a monster",{"->":".^.^.^.14"},null]}],"nop","^ is terrorizing the town.","\n","^Beside you, your two sisters are bickering.","\n","ev","str","^Look at the monster","/str","/ev",{"*":".^.c-0","flg":4},["ev",{"^->":"StartSequence.0.25.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Listen to their bickering",{"->":"$r","var":true},null]}],"ev","str","^Give Staff of Power to Eldra","/str",{"VAR?":"item_staff_of_power"},"/ev",{"*":".^.c-2","flg":5},"ev","str","^Go to the hut","/str",{"VAR?":"listened_to_bickering"},"/ev",{"*":".^.c-3","flg":5},"ev","str","^Check inventory","/str","/ev",{"*":".^.c-4","flg":4},{"c-0":["^ You look at the monster.","\n","ev",{"VAR?":"looked_at_monster"},1,"+",{"VAR=":"looked_at_monster","re":true},"/ev","^The Gorgon Eye is raking white-hot lasers across the helpless town, incinerating the odd cow or two.","\n","^It roars in delight. ",{"#":"CLASS: gorgoneye"},"\n",["ev","str",["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^Okay.",{"->":".^.^.17"},null],"s1":["pop","^Great.",{"->":".^.^.17"},null],"#f":5}],"/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","^...","\n",{"->":".^.^.^.^.^"},{"#f":5}]}],{"#f":5}],"c-1":["ev",{"^->":"StartSequence.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.25.s"},[{"#n":"$r2"}],"\n","ev",{"VAR?":"listened_to_bickering"},1,"+",{"VAR=":"listened_to_bickering","re":true},"/ev","^\"I'm the eldest sister, so I shouldn't have to fetch the magical wand,\" says Eldra.",{"#":"CLASS: bigsis"},"\n","^\"It's not fair just 'cause I'm the youngest! And the hut is so FAR!\" says Yolene.",{"#":"CLASS: littlesis"},"\n",["ev","str","^Sigh.","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ You dream of stuffing their mouths full of clay.","\n","^...","\n",{"->":".^.^.^.^.^"},{"#f":5}]}],{"#f":5}],"c-2":["^ You give the Staff of Power to Eldra.","\n","ev",0,"/ev",{"VAR=":"item_staff_of_power","re":true},"^Yolene attempts to grab at the staff, but Eldra swats her away easily.","\n","^\"Now, Gorgon Eye, prepare to feel the might of the most powerful witch in the land!\"",{"#":"CLASS:bigsis"},"\n",["ev","str","^Put on your sunglasses","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ It is nighttime, but you put on your sunglasses anyway.","\n","^Eldra recites a brief incantation, then a beam with the force of an exploding star erupts from her staff.","\n","^It obliterates the Gorgon Eye wholly.",{"#":"CLASS: redtext"},"\n",["ev","str","^Take your sunglasses off","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ You slide your sunglasses back in your pocket.","\n","^Yolene sulks.","\n","^Satisfied, Eldra says \"Let's go back to bed now.\" ",{"#":"CLASS: bigsis"},"\n",["ev","str","^Okay.","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ You go to bed.","\n","^...","\n",[["ev",{"^->":"StartSequence.0.c-2.11.c-0.7.c-0.7.c-0.4.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Zzz... ",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"StartSequence.0.c-2.11.c-0.7.c-0.7.c-0.4.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],{"#":"CLASS: hero"},"\n","^...","\n",{"->":"NextDay"},{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":5}],"c-3":["^ You walk the twenty steps back to the hut where you live.","\n","^...","\n",{"->":"Hut"},{"#f":5}],"c-4":["^ ",{"#":"CLASS: inventory"},"\n",{"->t->":"Inventory"},{"->":".^.^.^"},{"#f":5}]}],{"#f":1}],"Hut":[["ev",{"CNT?":"Hut"},1,">",{"VAR?":"item_staff_of_power"},"||","/ev",[{"->":".^.b","c":true},{"b":["^ You are in the hut you share with your two sisters.",{"->":"Hut.0.8"},null]}],"nop","\n","ev",{"CNT?":"Hut"},1,"<=",{"VAR?":"item_staff_of_power"},"!","||","/ev",[{"->":".^.b","c":true},{"b":["^ The hut you share with your two sisters is modest, but comfortable.",{"->":"Hut.0.19"},null]}],"nop","\n","^Outside, you continue to hear the sounds of common folk dodging magical fire, mixed in with Eldra and Yolene's argu-whining.","\n","ev",{"VAR?":"item_staff_of_power"},"!","/ev",[{"->":".^.b","c":true},{"b":["^ The Staff of Power sits neatly on the mantle above the fireplace.",{"->":"Hut.0.28"},null]}],"nop","\n","ev",{"VAR?":"item_staff_of_power"},"/ev",[{"->":".^.b","c":true},{"b":["^ There's an empty space above the mantle where the Staff of Power usually sits.",{"->":"Hut.0.34"},null]}],"nop","\n","ev","str","^Take the Staff of Power","/str",{"VAR?":"item_staff_of_power"},"!","/ev",{"*":".^.c-0","flg":5},"ev","str","^Leave the hut","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ You take the Staff of Power.","\n","ev",1,"/ev",{"VAR=":"item_staff_of_power","re":true},"^...","\n",{"->":"Hut"},{"#f":5}],"c-1":["^ You leave the hut.","\n","^...","\n",{"->":"StartSequence"},"end",{"#f":5}]}],{"#f":1}],"NextDay":[["^You wake up to the sound of a screaming turkey.","\n","ev","str","^What","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n","^...","\n",{"->":"HutNextDay"},{"#f":5}]}],{"#f":1}],"HutNextDay":[["^You are in the hut you share with your two sisters.","\n","^It is morning, and the sun is shining.","\n","^There's an empty space above the mantle where the Staff of Power usually sits.","\n","ev",{"CNT?":"BehindHutNextDay"},0,"==","/ev",[{"->":".^.b","c":true},{"b":["^ There is the sound of a screaming turkey coming from outside.",{"->":".^.^.^.12"},null]}],"nop","\n","ev","str","^Go outside","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ You go outside.","\n","^...","\n",{"->":"OutsideHutNextDay"},{"#f":5}]}],{"#f":1}],"OutsideHutNextDay":[["^You are on a country road.","\n","^In the distance, you see a peaceful country town.","\n","ev",{"CNT?":"BehindHutNextDay"},0,"==","/ev",[{"->":".^.b","c":true},{"b":["^ There is what sounds like a screaming turkey coming from behind the house.",{"->":".^.^.^.10"},null]}],"nop","\n","ev","str","^Go into hut","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Go behind hut","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^Go to town","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":["^ You go into the hut.","\n","^...","\n",{"->":"HutNextDay"},{"#f":5}],"c-1":["^ You go behind the hut.","\n","^...","\n",{"->":"BehindHutNextDay"},{"#f":5}],"c-2":["^ You go to town.","\n",{"->":"Town"},{"#f":5}]}],{"#f":1}],"BehindHutNextDay":[["ev",{"CNT?":".^.^"},1,">","/ev",[{"->":".^.b","c":true},{"b":["^ ",{"->":"BehindHutNoScreaming"},{"->":".^.^.^.6"},null]}],"nop","\n","^You are standing behind the hut.","\n","^There is a pile of wet laundry on top of what appears to be a screaming turkey.","\n","^<i>\"GENERICAAAAAAAAAAAA!!!\"</i> ",{"#":"CLASS: bigsis"},"\n","ev","str","^Did that turkey just say my name?!","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ You approach the turkey.","\n","^\"Generica, get me out of this pile of wet laundry!\" ",{"#":"CLASS: bigsis"},"\n","^You have never seen a turkey speak with such a mix of authority and desperation.","\n",{"->":"WalkAwayOrHelp"},{"#f":5}]}],{"#f":1}],"WalkAwayOrHelp":[["ev","str","^Help ","ev",{"VAR?":"walked_away"},0,">","/ev",[{"->":".^.b","c":true},{"b":["^ Eldra",{"->":".^.^.^.9"},null]}],"nop","^ ","ev",{"VAR?":"walked_away"},0,"==","/ev",[{"->":".^.b","c":true},{"b":["^ the turkey",{"->":".^.^.^.17"},null]}],"nop","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Walk away","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ You lift the pile of wet laundry off the struggling bird.","\n","^It wobbles to its feet and shakes off its feathers.","\n",{"->":"NextDayExplanation"},{"#f":5}],"c-1":["\n","ev",{"VAR?":"walked_away"},1,"+",{"VAR=":"walked_away","re":true},"/ev","^\"GENERICA, DON'T YOU DARE TURN YOUR BACK ON YOUR SISTER LIKE THAT!\" ",{"#":"CLASS: bigsis"},"\n","^...Yes, this turkey is definitely Eldra.","\n",{"->":".^.^.^"},{"#f":5}]}],{"#f":1}],"NextDayExplanation":[["ev","str","^\"What happened?\"","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ \"What happened?\" you ask. ",{"#":"CLASS: hero"},"\n","^\"Yolene has taken the Staff of Power and fled.\" ",{"#":"CLASS: bigsis"},"\n","^Eldra continues, \"And she's turned me into a turkey!\" ",{"#":"CLASS: bigsis"},"\n",[["ev",{"^->":"NextDayExplanation.0.c-0.9.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^\"Well, you've not been very kind to her.\" ",{"->":"$r","var":true},null]}],["ev",{"^->":"NextDayExplanation.0.c-0.9.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^\"That's terrible!\" ",{"->":"$r","var":true},null]}],["ev",{"^->":"NextDayExplanation.0.c-0.9.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^\"That's hilarious.\" ",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"NextDayExplanation.0.c-0.9.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],{"#":"CLASS: hero"},"\n","^\"I suppose I haven't been the best sister.\" Eldra replies.",{"#":"CLASS: bigsis"},"\n",{"->":"NextDayExplanation2"},{"#f":5}],"c-1":["ev",{"^->":"NextDayExplanation.0.c-0.9.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],{"#":"CLASS: hero"},"\n","^\"It is.\" Eldra replies. ",{"#":"CLASS: bigsis"},"\n",{"->":"NextDayExplanation2"},{"#f":5}],"c-2":["ev",{"^->":"NextDayExplanation.0.c-0.9.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],{"#":"CLASS: hero"},"\n","^Eldra simply gives you a cold look... A cold turkey look.","\n",{"->":"NextDayExplanation2"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"NextDayExplanation2":[["ev","str","^\"Where did she go?\"","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ \"Where did she go?\" you ask. ",{"#":"CLASS: hero"},"\n","^\"She ran off towards the town, proclaiming that she would be a much better witch than I was.\" ",{"#":"CLASS: bigsis"},"\n","^Eldra continues, \"But she's not old enough to harness the power of the staff!\" ",{"#":"CLASS: bigsis"},"\n",[["ev",{"^->":"NextDayExplanation2.0.c-0.9.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^\"I'm going to town to find her.\" ",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"NextDayExplanation2.0.c-0.9.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],{"#":"CLASS: hero"},"\n","^\"Good luck, Generica!\" ",{"#":"CLASS: bigsis"},"\n","^...","\n",{"->":"BehindHutNoScreaming"},{"#f":5}]}],{"#f":5}]}],{"#f":1}],"BehindHutNoScreaming":[["^You are standing behind the hut.","\n","^Your older sister Eldra is here, in the form of a turkey.","\n","^There is a pile of wet laundry on the ground.","\n","ev","str","^Talk to Eldra","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Go to the front of the hut","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ You talk to Eldra.","\n","^\"There's no time to lose! Find our sister before she hurts herself, or someone else!\" ",{"#":"CLASS: bigsis"},"\n",["ev","str","^\"Don't get your feathers in a bunch.\"","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ \"Don't get your feathers in a bunch.\" you reply. ",{"#":"CLASS: hero"},"\n","^...","\n",{"->":".^.^.^.^.^"},{"#f":5}]}],{"#f":5}],"c-1":["\n","^You go to the front of the hut.","\n","^...","\n",{"->":"OutsideHutNextDay"},"end",{"#f":5}]}],{"#f":1}],"Town":[["^Town placeholder","\n",["ev",{"^->":"Town.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Go towards home",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Town.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":"OutsideHutNextDay"},"^...","\n","end",{"#f":5}]}],{"#f":1}],"Inventory":[["^You check your inventory. ",{"#":"CLASS: inventory"},"\n",["ev",{"^->":"Inventory.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^...and that's all.",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Inventory.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^...","\n","ev","void","/ev","->->",{"#f":5}]}],{"#f":1}],"global decl":["ev",0,{"VAR=":"looked_at_monster"},0,{"VAR=":"listened_to_bickering"},0,{"VAR=":"item_staff_of_power"},0,{"VAR=":"walked_away"},"/ev","end",null],"#f":1}],"listDefs":{}};