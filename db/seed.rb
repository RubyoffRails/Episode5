# Cleaning Out
Page.delete_all

# Child pages
option_c = Page.create(conclusion: true, 
               content: "You're seeing things. A bear appears and eats you. YOU DEAD!", 
               preview: "Walk towards the light... your destiny awaits!")

option_d = Page.create(conclusion: true, 
               content: "It is! You stumble across Bacon Land where bacon is free and everywhere! WIN!",
               preview: "You smell more bacon... could it be true!?",
                winner: true)

option_e = Page.create(conclusion: true, 
               content: "No it isn't! FAIL. YOU LOSE!",
               preview: "You're bacon sandwich it isn't sitting well. Is that a toilet nearby?")

option_f = Page.create(conclusion: true, 
               content: "Well what do ya' know?? YOU WIN!",
               preview: "A sign appears saying, 'Go this way and you will win big'..",
                winner: true)

option_a = Page.create(conclusion: false, 
               content: "You're rich! Or not... You must continue on your journey to cash your gold pieces in...",
               preview: "A long journey awaits, but it could be worth it...",
           option_a_id: option_c.id,
           option_b_id: option_d.id)

option_b = Page.create(conclusion: false, 
               content: "You ate the bacon sandwich! Now you're even hungrier! Onwards march...",
               preview: "Tired and hungry, this could be just what you need!",
           option_a_id: option_e.id,
           option_b_id: option_d.id)

# Current page / starting point
page = Page.create(starting_point: true,
                          content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?",
                          preview: "30 gold pieces would make you rich... But that bacon sandwich smells awfully good!",
                          option_a_id: option_a.id,
                          option_b_id: option_b.id)
