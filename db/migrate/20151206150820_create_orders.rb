class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.integer :ship_cost
      t.integer :total_cost
      t.integer :discount
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
