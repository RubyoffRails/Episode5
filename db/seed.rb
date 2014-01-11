#options
#fourth tier
  fourthTier_option1 = Page.create(conclusion: true, content: "You have tea with the monkey. Mmmm Earl Grey. You win!", preview: "Sir")

  fourthTier_option2 = Page.create(conclusion: true, content: "The monkey does not appreciate you calling him that. He throws his poo at you. You sulk home in disgrace.", preview: "Ma'am")

#third tier
  thirdTier_option1 = Page.create(option_ids: [fourthTier_option1.id, fourthTier_option2.id], content: "How should you address the monkey?", preview: "Really? A monkey?" )
#second tier
#path1
  secondTier_option1 = Page.create(conclusion: true, content: "The duck gets mad and eats you. That was a terrible Quack", preview: "You quack at the duck.")

  secondTier_option2 = Page.create(option_ids: [thirdTier_option1.id], content: "Surprise! A monkey jumps in front of you!", preview: "You pat the duck.")

#path2
  secondTier_option3 = Page.create(conclusion: true, content: "Why would you pass up loot? You fall in the water. Eaten by sharks!? bummer!", preview: "Keep walking down the road toward the dock, ignoring the chest.")

  secondTier_option4 = Page.create(option_ids: [thirdTier_option1.id], content: "Surprise! A monkey jumps in front of you!", preview: "Bang open the chest with the hammer.")

#firstTier
#path1
  firstTier_option1 = Page.create(option_ids: [secondTier_option1.id, secondTier_option2.id], content: "You see a duck", preview: "Walk into the forest")

#path2
  firstTier_option2 = Page.create(option_ids: [secondTier_option3.id, secondTier_option4.id], content: "You see a giant chest with a hammer beside it.", preview: "Walk down the road to the dock")

#starting_page
  Page.create(starting_point: true, option_ids: [firstTier_option1.id, firstTier_option2.id], content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")






