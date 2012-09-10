require 'rubygems'
require 'bundler/setup'
require_relative '../db/setup'
require_relative '../models/page'
require_relative '../models/book'

#       +-5
#   +-2-+ +-7
# 1-+   4-+
#   +-3-+ +-8
#       +-6

Page.delete_all
page7 = Page.create(conclusion: true, preview: "Go further into the forest", content: "You have stumbled on the Shield of Awesomeness - yeah!", winner: true)
page8 = Page.create(conclusion: true, preview: "Walk down the road", content: "You fell off the pier. Boo.")
page5 = Page.create(conclusion: true, preview: "See what that shiny light is", content: "That was a shark with a laser on its head")
page6 = Page.create(conclusion: true, preview: "Go check out the pit", content: "You fell in. Told you not to get too close!")
page4 = Page.create(option_id_a: page7.id, option_id_b: page8.id, preview: "Walk a little further", content: "I'm walkin', yes indeed...")
page2 = Page.create(option_id_a: page5.id, option_id_b: page4.id, content: "Walking along the forest path.", preview: "Go into the forest")
page3 = Page.create(option_id_a: page4.id, option_id_b: page6.id, preview: "Go away from the forest", content: "You stumble into a puddle.",)
page1 = Page.create(starting_point: true, option_id_a: page2.id, option_id_b: page3.id, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
