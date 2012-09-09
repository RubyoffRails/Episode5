class AddsWinnerFieldPage < ActiveRecord::Migration
  def change
    add_column :pages, :winner, :boolean, :default => false
  end
end
