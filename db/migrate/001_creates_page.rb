class CreatesPage < ActiveRecord::Migration
	def change
		create_table :pages do |t|
      t.text :preview
			t.text :content
			t.boolean :starting_point, default: false
			t.boolean :conclusion, default: false
      t.boolean :winner, default: false
      t.integer :option_a_id
      t.integer :option_b_id
		end
	end
end
