require_relative '../models/page'
require_relative '../models/book'

Page.delete_all

first_page = Page.create(
  :starting_point => true,
  :outcome => <<eof
  You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces
  and a bacon sandwich.

  Which do you choose?
eof
)

second_page_a = Page.create(
  :tease => "Enter the forest",
  :outcome => <<eof
  You enter the forest. After a few yards, you run into a gnome who demands
  one item from your bag: the gold pieces or the bacon sandwich.
eof
)

second_page_b = Page.create(
  :conclusion => true,
  :tease => "Walk down the road",
  :outcome => <<eof
  The road takes you over a bridge filled with ferocious leaping sharks.
  One shark smells your peanut butter sandwich. He leaps out of the water
  and gobbles you down in large, hungry bites! Bummer.
eof
)

third_page_a = Page.create(
  :conclusion => true,
  :tease => "Give the gnome your gold pieces",
  :outcome => <<eof
  You idiot! Gnomes are allergic to gold, don't you know? He dies in hideous
  agony, and his family hounds you for all eternity.

  Sucks to be you.
eof
)

third_page_b = Page.create(
  :conclusion => true,
  :tease => "Give the gnome your bacon sandwich",
  :outcome => <<eof
  Dude: you win at life! Gnomes *love* bacon. He gobbles down the sandwich
  and gives you 300 silver pieces as a reward.
  (Not gold - gnomes are wicked allergic to gold.)
eof
)

first_page.option_a = second_page_a.id
first_page.option_b = second_page_b.id
first_page.a_tease = second_page_a.tease
first_page.b_tease = second_page_b.tease
first_page.save

second_page_a.option_a = third_page_a.id
second_page_a.option_b = third_page_b.id
second_page_a.a_tease = third_page_a.tease
second_page_a.b_tease = third_page_b.tease
second_page_a.save
