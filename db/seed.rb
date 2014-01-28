# Cleaning Out
Page.delete_all

page_two = Page.create(conclusion: true,
            preview: "Go into the forest",
            outcome: "You were methodically consumed by ZOMBIE DEER!!!",
            content: "As soon as you stepped off the road, darkness consumed you. You tripped, fell to the ground, and a hoard of zombie deer proceeded to gobble you up.")
page_three = Page.create(conclusion: true,
            preview: "Walk down the road",
            outcome: "You found the circle of life (can be traded at Trapper's Den for 2 gold pieces)!",
            content: "Apparently, after receiving it from his father, Simba dropped the circle of life while chasing a zombie deer.")
page = Page.create(starting_point: true,
                   option_a_id: page_two.id,
                   option_b_id: page_three.id,
                   content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")