require_relative '../spec/spec_helper.rb'

start_page = Page.create(starting_point: true, 
                         preview_a: "30 gold pieces",
                         preview_b: "Bacon Sandwich",
                         content: "You wake up on a road. It's foggy and damp. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")

choice_1a = Page.create(parent_id: start_page.id, 
                        conclusion: true,
                        winner: true,
                        content: "QE3 occurs. You use your 30 gold pieces to buy Ireland from a conglomerate of well heeled Orcs. You shower in the Irish Spring soap commercial waterfall for the rest of your days.")

choice_1b = Page.create(parent_id: start_page.id, 
                        conclusion: true,
                        winner: false,
                        content: "The bacon is old, almost crunchy. It makes you feel funny...")
