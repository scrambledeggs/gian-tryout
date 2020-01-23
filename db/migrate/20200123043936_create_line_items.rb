class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.belongs_to :dish
      t.belongs_to :tray
      t.belongs_to :order

      t.timestamps
    end
  end
end
