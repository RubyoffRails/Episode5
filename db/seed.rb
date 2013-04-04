Page.delete_all
start = Page.create(starting_point: true, preview: "Welcome, adventurer.", 
	content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true, parent_id: start.id, preview: "Sit down to eat your sandwich", 
	content: "You are attacked by a hungry bear who smells bacon.  You lose.")
Page.create(conclusion: true, parent_id: start.id, preview: "Keep walking",
	content: "You made it back to the inn safely.  You win 100 gold pieces!!")