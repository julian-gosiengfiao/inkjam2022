VAR giant_leaf = 0

=ForestFearyEntrance

You enter the faery forest. Wherever you look you can see shining trees and spot of light flying. On the floor you see flowers all over the place, they seem to dance at the rythm of a very repetitive song. Just in front of you a tree way bigger and taller than others. Each tree seem connected by a web of small cords on which sometimes is   #CLASS: narrator

* Brr, I hate faeries... -> ForestFearyHate -> FaeryForestHubStart #CLASS:hero
* Oh I love fearies! -> ForestFearyLove -> FaeryForestHubStart #CLASS:hero

=ForestFearyLove

As soon as you say this words, the whole forest become Yellow and shines. ->-> #CLASS: narrator

=ForestFearyHate
As soon as you say this words, the whole forest become red. ->-> #CLASS: narrator

=FaeryForestHubStart


A Faery approches you. #CLASS: narrator

Hellooooooooo beautifuuuuul ladyyyyyyy. I'm Småsporre, the Feary guardian of this foreeeeest. I noticed your presence when the Forest changed color! This forest is very sensitive, be very careful while you are here. #CLASS: guardian




+ Well, ok. I just want to escape this forest, where is the exit please?
    ->PrisonForest


=PrisonForest
    The wall Trees trunk start to enlarge en form walls around you.
+ +     sorry I didn't wanted to hurt you... you beautiful forest
        -> NormalForestHub    
+ +     You don't scare me you stupid trees!
        The tree now form a box around you, you can't anymore see the sky, you feel you have less and less oxigen...
        + + + I... Meant... You... are the most beautiful forest I ever seen...
            -> NormalForestHub
        + + + I am a honest person, I won't compliment you just because you treaten to kill me!
            The trees are now growing on your legs and arms and little by little you become a wooden statue. You are dead and form one more tree in the Faery forests
                + + + + Review my life choices by going back to the forest entrance -> FaeryForestHubStart


= backToTheForest
The walls take back their normal size
-> NormalForestHub

= NormalForestHub
You are in the Faery forest, the ground around you is full of flowers.
Flying high on top of the trees are glowing faeries. There is a giant tree standing next to you and in the middle of the forest what seems to be a magic stone standing.

* Talk to the Faery guardian
* Talk to the Giant tree
    -> GiantTreeDiscussion
* Inspect the stone
* Take a flower
    -> GiantFlowerForest

-> END

=GiantFlowerForest
As soon as you cut a flower, all the flowers of the forest start to grow and grow.. Instead of trees it's now giant terrifying flowers around you.

How do you dare killing one of ours? #CLASS: giantflower

+ inspect the dead flower
    The dead flower has also become giant and is now dead on the floor. One of its leaf is broken.
    + Take the giant leaf
        ~item_radiant_sock++
        You grab the giant leaf, might be useful.
        
        Wait, not only you kill one of ours but you grab some parts of its body? #CLASS: giantflower
        
        + And what will you do? You can't even move, you stupid flower #CLASS: hero
            -> PrisonForest
        + Put on your sunglasses
            You put on your sun glasses with no real reason. But the giant flowers seem impressed by it.
            
            Oh, sorry, we didn't recognized who you were. Now you have thes galsses we can tell you are a very important person. #CLASS: Giant flowers
            
            The flowers start to get lower and lower.
            ->NormalForestHub
    
+ talk to the giant tree
    ->GiantTreeDiscussion
    
=GiantTreeDiscussion
You approach the giant tree.

+ Hello, hum, giant tree, how are you?
    I'm good thank you.
+ What's up dude, this forest is weird isn't it?
    This forest is who we are, as we are, you should accept it as it.
- Yay


#Cut a flower to transform the Forest as a Giant Monstrous Flowers
#    => Leaf of a Giant Flower becomes a boat for the Ocean Forest
#Make the tree cry to transform the Forest as an Ocean Forest, make him happy to dry the forest
#    => Use the leaf as a boat to access the the glowing fearies and capture one of them in The Glass Mug
#Capture the glowing faery makes all the forest dark with red eyes. Can open the stone with the glowing faery

#XXXXXXACTIONXXXXX Creates an Glass Forest where we can grab a magical ice mug (doesn't melt)





#Talking tree
#Faery Guardian
#Flowers
#Magic standing stone
#Glowing Fairies
#Small river


