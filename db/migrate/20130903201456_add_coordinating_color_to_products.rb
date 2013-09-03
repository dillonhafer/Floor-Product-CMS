class AddCoordinatingColorToProducts < ActiveRecord::Migration
  def change
    add_column :products, :coordinating_color_id, :integer
  end
end
