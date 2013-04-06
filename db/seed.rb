Page.delete_all

#woods = Page.create(conclusion: true, preview: "Explore the woods", 
#	content: "You are attacked by a hungry bear who smells bacon.  You lose.")
campfire = Page.create(conclusion: true, preview: "Approach the campfire", 
	content: "Bandits steal your bag.  You lose everything!!")
sit = Page.create(conclusion: true, preview: "Sit down to eat your sandwich", 
	content: "You are attacked by a hungry bear who smells bacon.  You lose.")
walk = Page.create(conclusion: true, preview: "Keep walking",
	content: "You made it back to the inn safely.  You win 100 gold pieces!!")

forest = Page.create(option_a_id: sit.id, option_b_id: campfire.id,
	preview: "Go into the forest", 
	content: "You see a campfire in the distance.")
road = Page.create(option_a_id: sit.id, option_b_id: walk.id,
	preview: "Walk down the road",
	content: "You are hungry.")

start = Page.create(starting_point: true, option_a_id: forest.id, option_b_id: road.id,
	preview: "Welcome, adventurer.", 
	content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
