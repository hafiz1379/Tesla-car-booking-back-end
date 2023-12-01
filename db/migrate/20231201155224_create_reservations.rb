class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :city
      t.datetime :test_date

      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.timestamps
    end
  end
end
