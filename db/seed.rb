require_relative '../spec/spec_helper.rb'

start_page = Page.create(starting_point: true, 
                         preview_a: "30 gold pieces",
                         preview_b: "Bacon Sandwich",
                         content: "You wake up on a road. It's foggy and damp. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")

choice_1a = Page.create(preview_a: "Plunge into the woods",
                        preview_b: "Run down the road toward to bridge",
                        content: "You put the 30 gold pieces in your pocket and toss the bacon sandwich on the ground. A fair maiden emerges from the woods, grabs your sandwich and takes off. You've got to stop her! Where will you go?")

choice_1b = Page.create(preview_a: "I think she's headed for the bubbling brook, after her!",
                        preview_b: "Climb the nearest tree and see if you can spot her.",                        
                        content: "As you toss the gold on the ground and begin to eat your bacon sandwich, a fair maiden emerges from the woods and says 'm'lord, can I have the rest of that sandwich?' Before you answer, she grabs the sandwich and takes off. She must be stopped! Where will you go?")

choice_2a = Page.create(preview_a: "Preview A for 2a",
                        preview_b: "Preview B for 2a",
                        content: "You plunge into the woods. ")

choice_2b = Page.create(preview_a: "Preview A for 2b",
                        preview_b: "Preview B for 2b",
                        content: "Content for choice 2b")

choice_2c = Page.create(preview_a: "Preview A for 2c",
                        preview_b: "Preview B for 2c",
                        content: "Content for choice 2c")

choice_2d = Page.create(preview_a: "Preview A for 2d",
                        preview_b: "Preview B for 2d",
                        content: "Content for choice 2d")

choice_3 =  Page.create(conclusion: true,
                        winner: true,
                        content: "You find the maiden, take your sandwich and ride off into the sunset.")

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