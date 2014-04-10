# Cleaning Out
Page.delete_all

start = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
forest = Page.create(conclusion: false, parent_id: start.id, content: "Go into the forest")
road = Page.create(conclusion: false, parent_id: start.id, content: "Walk down the road")

campfire = Page.create(conclusion: false, parent_id: forest.id, content: "Approach the campfire")
sandwich = Page.create(conclusion: false, parent_id: forest.id, content: "Sit down to eat your sandwich")
Page.create(conclusion: true, parent_id: campfire.id, content: "You're a winner. Get 30 gold pieces!")
Page.create(conclusion: true, parent_id: sandwich.id, content: "Eaten by sharks!? bummer!")
