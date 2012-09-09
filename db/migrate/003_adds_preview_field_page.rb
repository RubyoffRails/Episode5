class AddsPreviewFieldPage < ActiveRecord::Migration
  def change
    add_column :pages, :preview, :text
  end
end
