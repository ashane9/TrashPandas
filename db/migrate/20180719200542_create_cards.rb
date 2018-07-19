class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards, :primary_key => :number do |t|
      t.string :summary
      t.string :card_type
      t.string :status
      t.integer :points
      t.string :owner
      t.boolean :blocked
      t.string :iteration
      t.timestamps
    end
  end
end
