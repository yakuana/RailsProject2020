class CreateSnacks < ActiveRecord::Migration[6.0]
  def change
    create_table :snacks do |t|
      t.string :name 
      t.decimal :price, default: 0.0
      t.string :img_url
      t.timestamps
    end
  end
end
