class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :snack_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
