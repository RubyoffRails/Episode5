1 page nil
	2 page 1
		6 page 2
		7 page 2
	3 page 1
		4 page 3
		5 page 3
		
have parent, want child

parent id = 3
where :parent_id = 3


have child, want parents

child id = 5

where :childs_parent_id = id

Episode 5 - Choose Your Own Adventure
=====================================

Creating adventures using data access

Panda Assignment
----------------

1. The pages need a Preview. Add a preview to the page. For example, "Go into the Forest", which is your choice when selecting A or B.
2. Edit the content so it's very clear if I'm a winner (I get 30 gold!) or a loser (Eaten by sharks!? bummer!)

Tiger Assignment
----------------

1. Extract the Page.creates out into a db/seed.rb file and load it
2. Create a two step workflow. This has an intro page with two selections, each of which lead to a conclusion

Eagle Assignment
----------------

1. Refactor so that the page doesn't have a parent -- instead it stores the id's of its options (option_a_id, option_b_id)
2. Cross the paths so that there is a common page that you'll reach in the 3rd tier

License
-------

Copyright Jesse Wolgamott 2012, MIT License. See LICENSE
