Page.delete_all
start = Page.create(starting_point: true, preview: "Welcome, adventurer.", 
	content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
forest = Page.create(parent_id: start.id, preview: "Go into the forest", 
	content: "You see a campfire in the distance.")
road = Page.create(parent_id: start.id, preview: "Walk down the road",
	content: "You are hungry.")
woods = Page.create(conclusion: true, parent_id: forest.id, preview: "Explore the woods", 
	content: "You are attacked by a hungry bear who smells bacon.  You lose.")
campfire = Page.create(conclusion: true, parent_id: forest.id, preview: "Approach the campfire", 
	content: "Bandits steal your bag.  You lose everything!!.")
sit = Page.create(conclusion: true, parent_id: road.id, preview: "Sit down to eat your sandwich", 
	content: "You are attacked by a hungry bear who smells bacon.  You lose.")
walk = Page.create(conclusion: true, parent_id: road.id, preview: "Keep walking",
	content: "You made it back to the inn safely.  You win 100 gold pieces!!")