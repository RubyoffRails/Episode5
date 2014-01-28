class CreatesPage < ActiveRecord::Migration
	def change
		create_table :pages do |t|
			t.text :content
      t.string :preview
      t.string :outcome
      t.integer :option_a_id
      t.integer :option_b_id
			t.boolean :starting_point, default: false
			t.boolean :conclusion, default: false
		end
	end
end
