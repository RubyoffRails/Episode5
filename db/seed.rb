# Cleaning Out
Page.delete_all
page = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true, 
            parent_id: page.id, 
            content: "Go into the forest",
            preview: "It's dark... you have half a bacon sandwich left... and you need to pee, but you keep only to discover.",
            winner: false)

Page.create(conclusion: true,
            parent_id: page.id,
            content: "Walk down the road",
            preview: "It's cold... you have no sandwich left... but you see a light and discover...",
            winner: true)

