require_relative '../spec/spec_helper.rb'

start_page = Page.create(starting_point: true, 
                         preview_a: "30 gold pieces",
                         preview_b: "Bacon Sandwich",
                         content: "You wake up on a road. It's foggy and damp. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")

choice_1a = Page.create(preview_a: "Plunge into the woods",
                        preview_b: "Run down the road toward to bridge",
                        content: "You put the 30 gold pieces in your pocket and toss the bacon sandwich on the ground. A fair maiden emerges from the woods, grabs your sandwich and takes off. You've got to stop her! Where will you go?")

choice_1b = Page.create(preview_a: "I think she's heading for the bubbling brook, after her!",
                        preview_b: "Climb the nearest tree and see if you can spot her.",                        
                        content: "As you toss the gold on the ground and begin to eat your bacon sandwich, a fair maiden emerges from the woods and says 'm'lord, can I have the rest of that sandwich?' Before you answer, she grabs the sandwich and takes off. She must be stopped! Where will you go?")

choice_2a = Page.create(preview_a: "Well, if the woods didn't work, maybe she's hiding under that bridge down the road.",
                        preview_b: "She is seriously hiding under the bridge down the road. I mean, who checks the woods first? Really. Just go look under the bridge.",
                        content: "You plunge into the woods. There are stickers everywhere. This is not worth a chunky bacon sandwich. Where do you go next?")

choice_2b = Page.create(preview_a: "You see the maiden! She's under the bridge. Pounce!",
                        preview_b: "Jump in the warp machine, see a command prompt, $>gem install find_maiden\n\n$>irb m = Maiden.new\n\n$>m.throw_net_over_and_get_back_sandwhich",
                        content: "You run down the road and come to a bridge.")

choice_2c = Page.create(preview_a: "Blink twice using your Google glasses to issue the 'Get GPS coordinates of Fair Maiden from your circling UAV' command.",
                        preview_b: "Charge the bridge.",
                        content: "You hear a bubbling brook and follow the sound down the road. You can see a bridge ahead and bread crumbs lay at your feet. What do you do?")

choice_2d = Page.create(preview_a: "Run quickly to the bridge.",
                        preview_b: "Run at Ent speed for the bridge.",
                        content: "The tree you try to climb is one of those Ents from Lord of the Rings. He ain't happy. After 20 minutes of talking, he tells you to run down to the bridge.")

choice_3 =  Page.create(conclusion: true,
                        winner: true,
                        content: "You find the maiden, take back your sandwich and ride off into the sunset.")

start_page.option_a_id = choice_1a.id
start_page.option_b_id = choice_1b.id
start_page.save
                       
choice_1a.option_a_id = choice_2a.id
choice_1a.option_b_id = choice_2b.id
choice_1b.option_a_id = choice_2c.id
choice_1b.option_b_id = choice_2d.id
choice_1a.save
choice_1b.save

choice_2a.option_a_id = choice_3.id
choice_2a.option_b_id = choice_3.id
choice_2b.option_a_id = choice_3.id
choice_2b.option_b_id = choice_3.id
choice_2c.option_a_id = choice_3.id
choice_2c.option_b_id = choice_3.id
choice_2d.option_a_id = choice_3.id
choice_2d.option_b_id = choice_3.id
choice_2a.save
choice_2b.save
choice_2c.save
choice_2d.save
                
#QE3 occurs. Rampant inflation. You use your 30 gold pieces to buy Ireland from a conglomerate of well heeled Orcs. You shower in the Irish Spring soap commercial waterfall for the rest of your days.
#The bacon is old, almost crunchy. You drift into a deep sleep...