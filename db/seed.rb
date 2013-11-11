

page = Page.create(starting_point: true, content: "you wake up on a road. 
  It's foggy and dampy. In your bag is 30 gold pieces and bacon sandwich. 
  Whihc do you choose?")

  Page.create(conclusion: true, parent_id: page.id, content: "WINNER")
  Page.create(conclusion: true, parent_id: page.id, content: "LOSER")

  # N/A turn the 'your options' into a string. 

