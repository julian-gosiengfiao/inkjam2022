INCLUDE First Room.ink
INCLUDE NextDay.ink
INCLUDE Inventory.ink
INCLUDE Act1Town.ink
INCLUDE Mine.ink
INCLUDE Endgame_Spells.ink
INCLUDE ManDog_Puzzle.ink
INCLUDE scene.ink

///DEBUG MENU - DELETE THIS WHEN SHOWING TO PEOPLE!
Debug Menu - delete this when showing to people!
+ Start game from beginning
#CLEAR
-> StartSequence
+ Start game from next day
#CLEAR
-> NextDay
+ Start game from Act1Town
#CLEAR
-> outsidetownfirstentry
+ Start game from Mine
#CLEAR
-> TransitionToMineArea
+ Start game from ManDog Puzzle
->mandogpuzzlestart
+ Start game from endgame
#CLEAR
-> endgamespellsstart

///This should be the first line of code that's run.
-> StartSequence

