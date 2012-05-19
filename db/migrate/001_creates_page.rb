class CreatesPage < ActiveRecord::Migration
	def change
		create_table :pages do |t|
			t.text :content
			t.text :preview_a
			t.text :preview_b
			t.integer :parent_id
			t.boolean :starting_point, default: false
			t.boolean :winner, default: nil 
			t.boolean :conclusion, default: false
		end
	end
end
