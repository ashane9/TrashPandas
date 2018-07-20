class AddDesComToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :description, :string
    add_column :cards, :comment, :string
  end
end
