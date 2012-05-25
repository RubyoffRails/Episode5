require_relative '../models/page'
require_relative '../models/book'

Page.delete_all


page1 = Page.create(starting_point: true,content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. \n What do you do?" )

page2a = Page.create(preview: "Eat the bacon sandwich, see if you can remember how you got here", content: "You sit down and take a bite of the bacon sandwich. As you eat you noice something written on the wrapper.")
page2b = Page.create(preview: "Take the money and run", content: "You grab the cash and make a run for it. You can go East or West \w Which way do you go?")

page3a = Page.create(conclusion: true, preview: "Keep eating and ignore the writing", content: "You have died of dysentery", winner: false )
page3b = Page.create(conclusion: true, preview: "Read the writing outloud", content: "Its in latin, good thing you speak latin. As soon as you finish reading the text, You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. CRAP!", winner: false )
page3c = Page.create(conclusion: true, preview: "East", content: "You run right off the cliff...idiot", winner: false )
page3d = Page.create(conclusion: true, preview: "West", content: "You grab the cash and make a run for it. As you start running you relize your passed out in your back yard, you go inside and have some coffee. Its a good day to be king", winner: true )

page1.option_a_id = page2a.id
page1.option_b_id = page2b.id
page1.option_a_preview = page2a.preview
page1.option_b_preview = page2b.preview
page1.save

page2a.option_a_id = page3a.id
page2a.option_b_id = page3b.id
page2a.option_a_preview = page3a.preview
page2a.option_b_preview = page3b.preview
page2a.save

page2b.option_a_id = page3c.id
page2b.option_b_id = page3d.id
page2b.option_a_preview = page3c.preview
page2b.option_b_preview = page3d.preview
page2b.save


#note: Use associations here^^^