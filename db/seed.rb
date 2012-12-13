# Cleaning Out
page2_option_a = Page.create(conclusion: true, preview: "Go futher into the forest", content: "The forest endlessly unfolds into an illogical maze of overgrown paths. You spend the rest of your days trying to find a way out. RIP")
page2_option_b = Page.create(conclusion: true, preview: "Turn around and head back to the road", content: "The forest endlessly unfolds into an illogical maze of overgrown paths. You spend the rest of your days trying to find a way out. RIP")
page2 = Page.create(option_a_id: page2_option_a.id, option_b_id: page2_option_b.id, preview: "Go into the forest", content: "You find that the forest is a maze of confusing paths.")


page3_option_a = Page.create(conclusion: true, preview: "Head into the woods and find a shortcut", content: "The forest endlessly unfolds into an illogical maze of overgrown paths. You spend the rest of your days trying to find that shortcut, smartypants. RIP")
page3_option_b = Page.create(conclusion: true, preview: "Continue down the road", content: "As you walk, you notice something glimmer on the horizon. You approach and find a pile of gold pieces the size of your parent's house. You can finally move out. YOU WIN!!!")
page3 = Page.create(option_a_id: page3_option_a.id, option_b_id: page3_option_b.id, preview: "Walk down the road", content: "This road doesn't seem to be going anywhere.")

page = Page.create(starting_point: true, option_a_id: page2.id, option_b_id: page3.id, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")

Page.update(page2_option_a.id, conclusion: false, option_a_id: page3.id, option_b_id: page2.id, preview: "Go futher into the forest", content: "It seems you've reached the other side of the forest and are back on the road.")
