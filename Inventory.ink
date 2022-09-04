=Inventory

You check your inventory. #CLASS: inventory

You have...#CLASS: inventory

{(not item_staff_of_power && not item_sunglasses): totally empty pockets.}#CLASS: inventory
{item_staff_of_power: the Staff of Power,}#CLASS: inventory
{item_sunglasses: a pair of sunglasses,}#CLASS: inventory
{tongs and not hotmilk: some blacksmith's tongs,} #CLASS: inventory
{hotmilk and not coldmilk: a bucket of warm and lilac-coloured milk,} #CLASS: inventory
{coldmilk and not trollmilkget: a bucket of very cold, lilac-coloured milk,} #CLASS: inventory
{item_laundry_room_key: a key to the laundry building,}#CLASS: inventory
{item_clean_laundry: a bundle of clean laundry,} #CLASS: inventory
{item_detergent: a box of <i>RADIANT SHINE</i> Extra-Foamy Premium Laundry Detergent,} #CLASS: inventory
{item_radiant_sock: a blindingly radiant sock,} #CLASS: inventory

Debug Options: GET RID OF THESE ON PUBLISH
+ Get staff of power
~item_staff_of_power++
->->
+ Get sunglasses
~item_sunglasses++
->->
+ Get tongs (not supported)
->->
+ Get hotmilk (not supported)
->->
+ Get coldmilk (not supported)
->->
+ Get laundry room key
~item_laundry_room_key++
->->
+ Get clean laundry
~item_clean_laundry++
->->
+ Get detergent
~item_detergent++
->->
+ Get laundry supply key
~item_supplies_key++
->->
+ Get radiant sock
~item_radiant_sock++
->->

+ ...and that's all.#CLASS: inventory
...
->->
