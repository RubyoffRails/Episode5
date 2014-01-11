class CreatesPage < ActiveRecord::Migration
	def change
		create_table :pages do |t|
			t.text :content
      t.text :preview
      t.integer :option_ids, array: true, default: []
			t.boolean :starting_point, default: false
			t.boolean :conclusion, default: false
		end
	end
end
