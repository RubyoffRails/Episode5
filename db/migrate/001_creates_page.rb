class CreatesPage < ActiveRecord::Migration
	def change
    create_table :pages do |t|
    	t.text :option_a_preview
    	t.text :option_b_preview
    	t.text :content
    	t.text :preview
    	t.integer :option_a_id
    	t.integer :option_b_id
    	t.boolean :starting_point, default: false
    	t.boolean :conclusion, default: false
    	t.boolean :winner
		end
	end
end
