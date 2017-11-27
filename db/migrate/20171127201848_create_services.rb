class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.references :car, foreign_key: true
      t.references :service_type, foreign_key: true
      t.date :service_date
      t.decimal :current_mileage
      t.string :notes

      t.timestamps
    end
  end
end
