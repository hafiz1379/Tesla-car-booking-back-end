class AddIsRemovedToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :is_removed, :boolean, default: false
  end
end
