require 'rubygems'
require 'bundler/setup'
require_relative '../db/setup'
require_relative '../models/page'
require_relative '../models/book'

Page.delete_all
page1 = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
page2 = Page.create(parent_id: page1.id, content: "Walking along the forest path.", preview: "Go into the forest")
Page.create(conclusion: true, parent_id: page1.id, content: "You fall into a puddle.", preview: "Go away from the forest")
Page.create(conclusion: true, parent_id: page2.id, preview: "Go further into the forest", content: "You have stumbled on the Shield of Awesomeness - yeah!", winner: true)
Page.create(conclusion: true, parent_id: page2.id, preview: "Walk down the road", content: "You fell off the pier. Boo.")
