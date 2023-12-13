class ModifySchemaForCarsTable < ActiveRecord::Migration[7.1]
  def up
    remove_column :cars, :model
    remove_column :cars, :brand

    add_column :cars, :description, :string

    change_column :cars, :finance_fee, :decimal, precision: 10, scale: 2
    change_column :cars, :option_to_purchase, :decimal, precision: 10, scale: 2
    change_column :cars, :total_amount_payable, :decimal, precision: 10, scale: 2
  end

  def down
    add_column :cars, :model, :string
    add_column :cars, :brand, :string

    remove_column :cars, :description

    change_column :cars, :finance_fee, :decimal
    change_column :cars, :option_to_purchase, :decimal
    change_column :cars, :total_amount_payable, :decimal
  end
end
