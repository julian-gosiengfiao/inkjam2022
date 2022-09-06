INCLUDE First Room.ink
INCLUDE NextDay.ink
INCLUDE Inventory.ink
INCLUDE Act1Town.ink
INCLUDE Mine.ink
INCLUDE Endgame_Spells.ink
INCLUDE ManDog_Puzzle.ink

->TitleScreen
=TitleScreen
Select an option. #CLASS: selection
+ START THE ADVENTURE
#CLEAR
->StartSequence
+ Chapter Select
#CLEAR
-> ChapterSelect

=ChapterSelect
Select a chapter. #CLASS: selection
+ Opening
#CLEAR
-> StartSequence

+ The Next Day
#CLEAR
~item_sunglasses++
-> NextDay

+ Act 1: The Town
#CLEAR
-> outsidetownfirstentry

+ Act 2: The Mine
#CLEAR
-> TransitionToMineArea

+ Act 3: The Man & the Dog
~item_laundry_room_key++
~item_radiant_sock++
~item_supplies_key++
->mandogpuzzlestart

+ The Final Act
#CLEAR
-> endgamespellsstart

+ Cancel
#CLEAR
->TitleScreen


=