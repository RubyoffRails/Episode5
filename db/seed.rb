
Page.delete_all
page = Page.create(starting_point: true, preview: 'Adventure road', content: "you wake up on a road. 
  It's foggy and dampy. In your bag is 30 gold pieces and bacon sandwich. Which do you choose?")
Page.create(conclusion: true, parent_id: page.id, preview: "Go into the Forest", content: "Omg...you just won 30 bags of gold: WINNER")
Page.create(conclusion: true, parent_id: page.id, preview: "Sail across the River", content: "Shat...you just got ripped to pieces by a clan of hungry paranas. LOSER")

#forrest = Page.create(conclusion: true, id: forrest.id, preview: '', content '')





#id: forrest.id