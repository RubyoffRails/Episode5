class CreatesPage < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :option_a
      t.integer :option_b
      t.text :tease
      t.text :a_tease
      t.text :b_tease
      t.boolean :starting_point, default: false
      t.boolean :conclusion, default: false
      t.text :outcome
    end
  end
end
