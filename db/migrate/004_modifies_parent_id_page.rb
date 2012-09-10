class ModifiesParentIdPage < ActiveRecord::Migration
	def change
    remove_column :pages, :parent_id
    add_column :pages, :option_id_a, :integer
    add_column :pages, :option_id_b, :integer
	end
end
