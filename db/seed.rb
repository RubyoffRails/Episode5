# Cleaning Out
Page.delete_all

# Current page / starting point
page = Page.create(starting_point: true,
                          content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?",
                          preview: "30 gold pieces would make you rich... But that bacon sandwich smells awfully good!")

# Child pages
Page.create(conclusion: true, 
             parent_id: page.id, 
               content: "You've won 30 pieces of gold!",
               preview: "some preview for option_a goes here...")
Page.create(conclusion: true, 
             parent_id: page.id, 
               content: "You ate the bacon sandwich you greedy buggar!",
               preview: "Some preview for option_b goes here...")


