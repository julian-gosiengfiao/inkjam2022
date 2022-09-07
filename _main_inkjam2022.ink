INCLUDE First Room.ink
INCLUDE NextDay.ink
INCLUDE Inventory.ink
INCLUDE Act1Town.ink
INCLUDE Mine.ink
INCLUDE Endgame_Spells.ink
INCLUDE ManDog_Puzzle.ink

->TitleScreen
=TitleScreen
Select an option #CLASS: selection
+ START THE ADVENTURE
#CLEAR
->StartSequence
+ Chapter Select
#CLEAR
-> ChapterSelect

=ChapterSelect
Select a chapter #CLASS: selection
+ Opening
#CLEAR
-> StartSequence

+ The Next Day
#CLEAR
~item_sunglasses++
-> AchievementsDisabled -> NextDay

+ Act 1: The Town
#CLEAR
~item_sunglasses++
-> AchievementsDisabled -> cowencounter

+ Act 2: The Mine
#CLEAR
~item_sunglasses++
-> AchievementsDisabled -> MineStart

+ Act 3: The Man & the Dog
#CLEAR
~item_sunglasses++
~item_laundry_room_key++
~item_radiant_sock++
~item_supplies_key++
-> AchievementsDisabled ->mandogpuzzlestart2

+ The Final Act
#CLEAR
~item_sunglasses++
~item_laundry_room_key++
~item_radiant_sock++
~item_supplies_key++
-> AchievementsDisabled -> endgamespellsstart2

+ Cancel
#CLEAR
->TitleScreen


=AchievementsDisabled
//Chapter skip used. Achievements disabled. #CLASS: system
//...
->->