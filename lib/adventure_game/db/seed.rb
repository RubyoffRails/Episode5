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
page_six = Page.create(option_a_id: page_two.id,
                       option_b_id: page_three.id,
                       preview: "Take a moment and taste the bacon fat in your mouth",
                       outcome: "Your spirits are lifted and you are ready to take on the world!",
                       content: "Armed with the power to take on the known world, you set forth.")
page_four = Page.create(option_a_id: page_six.id,
                   option_b_id: page_two.id,
                   preview: "Admire the 30 gold pieces",
                   outcome: "You were ransacked and robbed by a hoard of geriatric orcs!",
                   content: "They came at you slow, but because you were sucked into the glow of the gold you didn't notice 3 old orcs guided by walkers(with the little tennis balls on the fronts). You eat the bacon sandwich.")
page_five = Page.create(option_a_id: page_two.id,
                   option_b_id: page_six.id,
                   preview: "Eat the bacon sandwich",
                   outcome: "Your belly is happy and your mind is clear.",
                   content: "Obviously the only choice. Now that you've chosen wiser than Indiana Jones and the Quest For the Holy Grail, you are left with only the best decisions.")
page = Page.create(starting_point: true,
                   option_a_id: page_four.id,
                   option_b_id: page_five.id,
                   content: "You wake up on a road. It's foggy and damp. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
