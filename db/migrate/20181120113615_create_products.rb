class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price_unit, precision: 8, scale:2
      t.integer :quantity

      t.timestamps
    end
  end
end
