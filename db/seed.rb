require_relative '../models/page'
require_relative '../models/book'

Page.delete_all

first_page = Page.create(
  starting_point: true,
  content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?"
)

second_page_a = Page.create(
  conclusion: false,
  parent_id: first_page.id,
  content: "Go into the forest"
)

second_page_b = Page.create(
  conclusion: false,
  parent_id: first_page.id,
  content: "Walk down the road"
)

Page.create(
  conclusion: true,
  parent_id: second_page_a.id,
  content: "You find a pot of gold with 30 more gold pieces! Victory is yours."
)

Page.create(
  conclusion: true,
  parent_id: second_page_b.id,
  content: "The road takes you over a bridge filled with ferocious leaping sharks. One shark smells your peanut butter sandwich: he leaps out of the water and gobbles you down in large, hungry bites! Bummer."
)
