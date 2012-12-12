# Cleaning Out
page = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
page2 = Page.create(parent_id: page.id, preview: "Go into the forest", content: "You find that the forest is a maze of confusing paths.")
Page.create(conclusion: true, parent_id: page2.id, preview: "Go futher into the forest", content: "The forest endlessly unfolds into an illogical maze of overgrown paths. You spend the rest of your days trying to find a way out. RIP")
Page.create(conclusion: true, parent_id: page2.id, preview: "Turn around and head back to the road", content: "The forest endlessly unfolds into an illogical maze of overgrown paths. You spend the rest of your days trying to find a way out. RIP")
page3 = Page.create(parent_id: page.id, preview: "Walk down the road", content: "This road doesn't seem to be going anywhere.")
Page.create(conclusion: true, parent_id: page3.id, preview: "Head into the woods and find a shortcut", content: "The forest endlessly unfolds into an illogical maze of overgrown paths. You spend the rest of your days trying to find that shortcut, smartypants. RIP")
Page.create(conclusion: true, parent_id: page3.id, preview: "Continue down the road", content: "As you walk, you notice something glimmer on the horizon. You approach and find a pile of gold pieces the size of your parent's house. You can finally move out. YOU WIN!!!")
