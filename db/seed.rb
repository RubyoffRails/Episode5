
Page.delete_all
steady = Page.create(conclusion: true, preview: 'You move forward', 
  content: 'You crash a secret conference of top teer venture capitalist. They like you so much they give you some pocket change. 30 bags of gold: WINNER')
sleep = Page.create(conclusion: true, preview: 'You lay down for a power nap', 
  content: 'A clan of dwarfs adopt you and name you sleepy. Unfortunately that very day grumpy\'s new pick-ax arrives from Amazon and you loose your head: LOSER') 
forest = Page.create(option_a_id: steady.id, option_b_id: sleep.id, preview: "Go into the Forest", content: "You see smoke in the distance.")
lake = Page.create(option_a_id: steady.id, option_b_id: sleep.id, preview: "Sail across the Lake", content: "You begin to hear music in the distance.")
page = Page.create(starting_point: true, option_a_id: forest.id, option_b_id: lake.id, preview: "Welcome subjects", content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")


