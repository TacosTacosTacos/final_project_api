class CreateMileages < ActiveRecord::Migration[5.1]
  def change
    create_table :mileages do |t|
      t.references :car, foreign_key: true
      t.date :purchase_date
      t.decimal :gallons_of_gas
      t.decimal :trip_miles
      t.decimal :price_of_gas

      t.timestamps
    end
  end
end
