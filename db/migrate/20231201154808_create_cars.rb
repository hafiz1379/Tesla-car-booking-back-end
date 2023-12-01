class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :color
      t.integer :year
      t.decimal :finance_fee
      t.decimal :option_to_purchase
      t.decimal :total_amount_payable
      t.string :image
      t.integer :duration


      t.timestamps
    end
  end
end
